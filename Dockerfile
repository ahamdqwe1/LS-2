# Use an official Python runtime as the base image
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the calculator script to the container
COPY calculator.py .

# Install the required packages
RUN pip install --no-cache-dir -U pip && \
    pip install --no-cache-dir readline

# Set the entrypoint to run the calculator script
ENTRYPOINT ["python", "calculator.py"]
