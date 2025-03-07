# Define the base image
FROM python:3
 
COPY . /simple-python-pyinstaller
WORKDIR /simple-python-pyinstaller
RUN pip install --upgrade pip \
 && pip install --no-cache-dir -r requirements.txt