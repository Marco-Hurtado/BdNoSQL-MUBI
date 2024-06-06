#!/usr/bin/env bash

# Configuración de la URI de MongoDB
mongo_uri="mongodb://localhost:27017"

# Nombre de la base de datos
db_name="MUBI"

# Solicitar al usuario el nombre de la colección, la carpeta, el patrón de nomenclatura y el número máximo de archivos
read -p "Colección: " collection_name
read -p "Carpeta: " carpeta
read -p "Patrón de nomenclatura (ej. pais): " pattern
read -p "Número máximo de archivos: " max_files

# Directorio donde se encuentran los archivos JSON (ajustarlo a tu estructura de directorios)
json_dir="/home/misa/Documentos/CienciDeDatos/6TO SEMESTRE/BD_noSQL/BdNoSQL-MUBI/JSON_FILES/${carpeta}/"

# Iterar sobre los archivos del 0000 hasta el número máximo especificado
for i in $(seq -f "%04g" 1 $max_files); do
    # Nombre del archivo JSON basado en el patrón y el número actual
    json_file="${pattern}${i}.json"

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

# # Configuración de la URI de MongoDB
# mongo_uri="mongodb://localhost:27017"

# # Nombre de la base de datos y colección
# db_name="MUBI"
# # collection_name="vistas"
# # carpeta="vistas"

# read -p "Collecion: " collection_name

# read -p "Carpeta: " carpeta


# # Directorio donde se encuentran los archivos JSON (asegúrate de ajustarlo a tu estructura de directorios)
# json_dir="/home/misa/Documentos/CienciDeDatos/6TO SEMESTRE/BD_noSQL/BdNoSQL-MUBI/JSON_FILES/${carpeta}/"

# # Iterar sobre los archivos del 01 al 20
# for i in {0001..0146}; do
#     # Nombre del archivo JSON
#     json_file="pais${i}.json"

#     # Ruta completa al archivo JSON
#     file_path="${json_dir}${json_file}"

#     # Verificar si el archivo existe antes de importarlo
#     if [ -f "$file_path" ]; then
#         # Ejecutar mongoimport para el archivo actual
#         echo "Importando archivo ${json_file}..."
#         mongoimport --uri "${mongo_uri}" --db "${db_name}" --collection "${collection_name}" --file "${file_path}"
#         echo "Archivo ${json_file} importado correctamente."
#     else
#         echo "El archivo ${json_file} no existe en la ruta especificada."
#     fi
# done
