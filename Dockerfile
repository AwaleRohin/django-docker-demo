FROM python:3.8-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

# Install dependencies
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt

# Copy project
COPY django_docker_demo /code/

# Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
