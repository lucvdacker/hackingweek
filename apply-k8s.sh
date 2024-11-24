#!/bin/bash

# Define the list of YAML files to apply in order
files=(
  "jwt-secret.yaml"
  "postgres-secret.yaml"
  "postgres.config.yaml"
  "postgres-configmap.yaml"
  "postgres.yaml"
  "userservice.yaml"
  "gateway.yaml"
)

# Loop through the files and apply them using kubectl
for file in "${files[@]}"
do
  echo "Applying $file..."
  kubectl apply -f "$file"

  if [ $? -ne 0 ]; then
    echo "Error applying $file. Exiting..."
    exit 1
  else
    echo "$file applied successfully."
  fi
done

echo "All configurations have been applied successfully!"
