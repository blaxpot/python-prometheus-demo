FROM python:3.8

RUN apt-get update -y && apt-get install libsnappy-dev -y

WORKDIR /code
COPY app.py ./
COPY requirements.txt ./

RUN pip install -r ./requirements.txt

CMD ["python", "./app.py"]
