# Use an official Python runtime as a base image
FROM python:3.11
# Install system dependencies
RUN apt-get update && \
    apt-get install -y default-libmysqlclient-dev build-essential && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the application code into the container
COPY . .

# Install Flask and other dependencies
RUN pip install Flask
RUN pip install -r requirements.txt
RUN apt-get update && apt-get install -y default-mysql-client

# Expose the necessary port
EXPOSE 5000

# Command to start the Flask app
CMD ["python", "app.py"]
