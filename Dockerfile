FROM python:3-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

VOLUME /out
WORKDIR /out
ENTRYPOINT ["python", "/app/udemy-dl.py"]
