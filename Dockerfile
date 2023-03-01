FROM python:alpine3.17

## Step 1:
WORKDIR /app

## Step 2:
COPY . main.py /app/

## Step 4:
EXPOSE 8080
## Step 5:
CMD ["python3", "main.py"]