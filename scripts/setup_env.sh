#!/bin/bash
echo "Installing dependencies..."
pip install -r requirements.txt
echo "Setting up environment variables..."
export YOUTUBE_API_KEY=your_api_key
echo "Setup complete."
