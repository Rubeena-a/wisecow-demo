#FROM python:3.10-slim
# Uses the official Python 3.10 slim image as the base for a lightweight container.
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y cowsay fortune-mod netcat-openbsd && \
    apt-get clean

# Set working directory
WORKDIR /app

# Copy application script
COPY wisecow-app/wisecow.sh .

# Make script executable
RUN chmod +x wisecow.sh

# Expose application port
EXPOSE 4499

# Run application
CMD ["./wisecow.sh"]