# Use a Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the backend code
COPY backend/ ./backend/

# Expose the port and define the entry point
EXPOSE 8080
CMD ["python", "backend/youtube/fetch_playlist.py"]
