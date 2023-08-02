FROM python:3.7.12-slim-buster

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get -qq update && apt-get install -qq \
        curl \
        python-dev \
        python-setuptools \
        git

COPY . /usr/src/app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3", "src/app.py"]

