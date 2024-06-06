#!/bin/bash

# Configuración de la URI de MongoDB
mongo_uri="mongodb://localhost:27017"

# Nombre de la base de datos y colección
db_name="MUBI"
collection_name="resenias"

# Directorio donde se encuentran los archivos JSON (asegúrate de ajustarlo a tu estructura de directorios)
json_dir="/home/misa/Documentos/CienciDeDatos/6TO SEMESTRE/BD_noSQL/BdNoSQL-MUBI/JSON_FILES/countries/"

# Iterar sobre los archivos del 01 al 20
for i in {0001..0146}; do
    # Nombre del archivo JSON
    json_file="pais${i}.json"

    # Ruta completa al archivo JSON
    file_path="${json_dir}${json_file}"

    # Verificar si el archivo existe antes de importarlo
    if [ -f "$file_path" ]; then
        # Ejecutar mongoimport para el archivo actual
        echo "Importando archivo ${json_file}..."
        mongoimport --uri "${mongo_uri}" --db "${db_name}" --collection "${collection_name}" --file "${file_path}"
        echo "Archivo ${json_file} importado correctamente."
    else
        echo "El archivo ${json_file} no existe en la ruta especificada."
    fi
done
