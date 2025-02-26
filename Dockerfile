FROM python:3.11-slim-buster

# Set working directory
WORKDIR /app/

# Copy requirements and install dependencies
COPY requirements.txt /app/
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy rest of the application
COPY . /app/

# Environment variables (Fixed syntax)
ENV AWS_DEFAULT_REGION "us-east-1"
ENV BUCKET_NAME "mynetworksecurity123"
ENV PREDICTION_BUCKET_NAME "my-network-datasource123"
ENV MONGO_DB_URL "mongodb+srv://admin:admin@cluster0.22222.mongodb.net/?retryWrites=true&w=majority"

# Update system packages
RUN apt update -y 

# Expose port 8000 for incoming traffic
EXPOSE 8000


# Default command
CMD ["python", "main.py"]