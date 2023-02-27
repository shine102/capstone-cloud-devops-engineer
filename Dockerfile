FROM python:alpine3.17

## Step 1:
WORKDIR /app

## Step 2:
COPY . main.py /app/

## Step 3:
RUN make all

## Step 4:
EXPOSE 5000
## Step 5:
CMD ["python3", "main.py"]