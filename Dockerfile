
FROM python:3.12-slim

WORKDIR /app

COPY R1.py .

CMD ["python", "R1.py"]
