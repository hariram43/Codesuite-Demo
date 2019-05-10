# Set base image to python
FROM python:3.5

# File Author / Maintainer
MAINTAINER hariram.jeyaraman

# Copy source file and python req's
COPY hello.py /usr/src/app/
COPY requirements.txt /

# Install requirements
RUN pip install -r /requirements.txt

# Set default AWS region
ENV AWS_DEFAULT_REGION us-west-2

EXPOSE 80

CMD ["python", "/usr/src/app/hello.py"]
