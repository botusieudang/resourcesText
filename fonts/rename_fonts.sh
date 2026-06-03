#!/bin/bash

# Read the CSV file line by line
while IFS=, read -r key value; do
	# Determine the postfix (e.g., _vi_ru) if the key contains an underscore
	if [[ $key == *_* ]]; then
		postfix="_${key#*_}"
	else
		postfix=""
	fi

	# Process the mapped value: lowercase and replace spaces with underscores
	value_processed=$(echo "$value" | tr ' ' '_' | tr '[:upper:]' '[:lower:]')

	# Find all files matching the key with any extension
	for file in "${key}".*; do
		if [ -f "$file" ]; then
			# Extract the file extension
			extension="${file##*.}"
			# Construct the new file name
			new_name="${value_processed}${postfix}.${extension}"
			# Rename the file without overwriting existing files
			mv -n "$file" "$new_name"
			echo "Renamed: $file -> $new_name"
		fi
	done
done <font_mappings.csv
