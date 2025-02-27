FROM python:3.10.5-slim-buster

LABEL maintainer="sparrowq2@gmail.com"


ENV PYTHONUNBUFFERED 1

WORKDIR app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app/main.py"]
