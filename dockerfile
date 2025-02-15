FROM python:3.9-slim

WORKDIR /LLM-Based-Automation_Agent

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .
EXPOSE 8000

CMD [ "uv", "run", "app.py"]

