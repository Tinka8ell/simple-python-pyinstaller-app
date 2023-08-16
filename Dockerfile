# Define the base image
FROM python:3
 
# Install all the required packages
RUN pip3 install -r python_requirements.txt \
 && pip3 install .
