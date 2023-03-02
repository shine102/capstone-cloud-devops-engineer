FROM python:alpine3.17

## Step 1:
WORKDIR /app

## Step 2:
COPY . main.py /app/
COPY . requirements.txt /app/

## Step 3:
RUN pip3 install -r requirements.txt

## Step 4:
EXPOSE 8080
## Step 5:
CMD ["python3", "main.py"]