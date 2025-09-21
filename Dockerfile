FROM python:3.10-slim
# Uses the official Python 3.10 slim image as the base for a lightweight container.

WORKDIR /app
# Sets the working directory inside the container to /app.

COPY requirements.txt .
# Copies requirements.txt from project into the container.

RUN pip install --no-cache-dir -r requirements.txt
# Installs Python dependencies listed in requirements.txt without caching.

COPY app.py .
# Copies main application file (app.py) into the container.

EXPOSE 8080
# Informs Docker that the container will listen on port 8080.

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app", "--workers", "2"]
# Sets the default command to run Gunicorn, binding to all interfaces on port 8080, serving the app object from app.py, with 2 worker processes.