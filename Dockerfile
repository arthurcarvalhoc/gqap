FROM python:3.7-buster

WORKDIR /opt/project
COPY requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
RUN mkdir -p /opt/project
RUN python --version

WORKDIR /opt/project