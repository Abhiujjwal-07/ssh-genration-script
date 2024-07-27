#!/bin/bash

KEY_NAME="gcp_instance_key"       #key file name
KEY_PATH="$HOME/.ssh/$KEY_NAME"
COMMENT="TestUserForGcp"          #Any prefered username
echo "Generating SSH key pair..."
ssh-keygen -t rsa -b 2048 -f "$KEY_PATH" -C "$COMMENT" -N ""
if [ $? -eq 0 ]; then
  echo "SSH key pair generated successfully."
else
  echo "Error generating SSH key pair."
  exit 1
fi
echo "Displaying the public key..."
cat "$KEY_PATH.pub"
echo "The SSH key pair has been saved to:"
echo "Private key: $KEY_PATH"
echo "Public key: $KEY_PATH.pub"

