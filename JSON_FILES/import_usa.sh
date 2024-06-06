#!/bin/bash

# MongoDB connection details
DB="MUBI"
COLLECTION="resenias"
COUNTRY_NAME="USA"

# Function to update the country document with a state
embed_state() {
  stateFile=$1
  stateData=$(cat "$stateFile")
  # Crear un archivo temporal
  tempFile=$(mktemp)
  echo "
    var state = $stateData;
    db.$COLLECTION.updateOne(
      { pais: '$COUNTRY_NAME' },
      { \$push: { productoras: { \$each: state } } }
    );
  " > "$tempFile"
  # Ejecutar el script con mongosh
  mongosh $DB "$tempFile"
  # Eliminar el archivo temporal
  rm "$tempFile"
}

# Loop through each state file and embed it
for stateFile in ./USA/*.json; do
  echo "Processing file: $stateFile"
  embed_state "$stateFile"
done


# MongoDB connection details
# DB="MUBI"
# COLLECTION="resenias"
# COUNTRY_NAME="USA"

# # Import the country document
# # mongoimport --db $DB --collection $COLLECTION --file country.json --jsonArray

# # Function to update the country document with a state
# embed_state() {
#   stateFile=$1
#   stateData=$(cat "$stateFile")
#   # cat "$stateFile"  
#   mongosh $DB --eval "
#     var state = $stateData;
#     db.$COLLECTION.updateOne(
#       { pais: '$COUNTRY_NAME' },
#       { \$push: { productoras: { \$each: state } } }
#     );
#   "
# }

# # Loop through each state file and embed it
# for stateFile in ./USA/*.json; do
#   echo "$stateFile"
#   embed_state "$stateFile"
# done