# Set base image to python
FROM python:3.5

# File Author / Maintainer
MAINTAINER hariram

# Copy source file and python req's
COPY hello.py /usr/src/app/
COPY requirements.txt /

# Install requirements
RUN pip install -r /requirements.txt
#RUN sonar:sonar -Dsonar.login=b10217516796988ae8aea42ee02c7010b4d25620 -Dsonar.host.url=http://18.224.216.39:9000
# Set default AWS region
ENV AWS_DEFAULT_REGION us-west-2

EXPOSE 80

CMD ["python", "/usr/src/app/hello.py"]
