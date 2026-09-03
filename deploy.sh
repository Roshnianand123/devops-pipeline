#!/bin/bash

echo "Starting deployment..."

# Check whether Python is installed
if ! command -v python &> /dev/null
then
    echo "Python is not installed."
    exit 1
fi

echo "Python is installed."

# Run tests
echo "Running tests..."
python -m pytest

if [ $? -ne 0 ]
then
    echo "Tests failed. Deployment stopped."
    exit 1
fi

echo "Tests passed."

# Run the application
echo "Running application..."
python app.py

echo "Deployment successful!"