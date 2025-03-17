# Use a basic Python image
FROM python:3.7-slim

# Set the working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    python3-dev \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Copy the requirements file and install Python dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the application code
COPY app app/

# Create models directory
RUN mkdir -p app/models

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["python", "app/server.py", "serve"]