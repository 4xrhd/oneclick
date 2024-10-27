#!/bin/bash
# Change to the home directory
cd 

echo "Installing/updating all tools listed in go.txt..."
sleep 2

# Check if go.txt file exists
if [[ ! -f go.txt ]]; then
    echo "Error: go.txt file not found!"
    exit 1
fi

# Loop through each line in go.txt and install/update the package
while IFS= read -r package; do
    if [[ -n $package ]]; then
        # Install or update each package using go get
        go install -v -u github.com/"$package"
    fi
done < go.txt

echo "Installation/update completed for all tools."

