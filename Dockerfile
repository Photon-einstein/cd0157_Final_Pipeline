# Use the `python:3.9` as a source image from the Amazon ECR Public Gallery
# We are not using `python:3.9.2-slim` from Dockerhub because it has put a  pull rate limit. 
FROM public.ecr.aws/sam/build-python3.9:latest

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask==2.2.5 jinja2==3.1.2


ENTRYPOINT ["python", "app.py"]

