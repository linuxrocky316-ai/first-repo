#!/bin/bash

# Simple script to create files and folders

echo "What would you like to create?"
echo "1) File"
echo "2) Folder"
echo "3) Both"
read -p "Enter your choice (1-3): " choice

case $choice in
    1)
        read -p "Enter file name: " filename
        touch "$filename"
        echo "File '$filename' created successfully!"
        ;;
    2)
        read -p "Enter folder name: " foldername
        mkdir -p "$foldername"
        echo "Folder '$foldername' created successfully!"
        ;;
    3)
        read -p "Enter file name: " filename
        read -p "Enter folder name: " foldername
        mkdir -p "$foldername"
        touch "$filename"
        echo "File '$filename' and folder '$foldername' created successfully!"
        ;;
    *)
        echo "Invalid choice. Please run the script again."
        exit 1
        ;;
esac
