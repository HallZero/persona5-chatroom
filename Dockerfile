FROM python:3.12-slim-buster

# Path: /app
WORKDIR /app

# Path: /app/requirements.txt
COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

# Path: /app
COPY . .

# Path: /app
CMD ["uvicorn", "main:app", "--host", "", "--port", "8000"]