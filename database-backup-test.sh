#!/bin/bash


while getopts u:p:d: flag
do
    case "${flag}" in
        u) username=${OPTARG};;
        p) password=${OPTARG};;
        d) database=${OPTARG};;
    esac
done

if [ -z "$username" ]; then
    echo "Please provide database username"
    exit 1;
fi

if [ -z "$password" ]; then
    echo "Please provide database password"
    exit 1;
fi

if [ -z "$database" ]; then
    echo "Please provide database name"
    exit 1;
fi


timestamp=$(date +%Y%m%d%H%M%S)

filename="${timestamp}-${database}.sql"

echo "Processing backu for ${database} with filename ${filename}"

docker exec db /usr/bin/mysqldump --no-tablespaces -u "${DB_USERNAME}" --password="${DB_PASSWORD}" "${DB_NAME}" >"$filename"

sed -i "$filename" -e 's/utf8mb4_0900_ai_ci/utf8mb4_unicode_ci/g'