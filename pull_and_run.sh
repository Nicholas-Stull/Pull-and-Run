#!/bin/bash

# Ensure the GITHUB_TOKEN environment variable is set
if [ -z "$GITHUB_TOKEN" ]; then
    echo "Error: GITHUB_TOKEN is not set."
    exit 1
fi

# GitHub username and repository details
GITHUB_USERNAME="nicholas-stull"
PRIVATE_REPO="Server-Setup"

# Directory to clone the private repository into
CLONE_DIR="/opt/private_repo"

# Clone the private repository using the GitHub token
git clone https://$GITHUB_USERNAME:$GITHUB_TOKEN@github.com/$GITHUB_USERNAME/$PRIVATE_REPO.git $CLONE_DIR

# Navigate to the directory containing the script
cd $CLONE_DIR

# Run the main setup script
chmod +x setup_stullserv.sh
./setup_stullserv.sh
