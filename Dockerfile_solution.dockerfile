FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip

COPY . /app

WORKDIR /app

# Check if requirements.txt exists before attempting to install packages
RUN if [ -f requirements.txt ]; then pip3 install -r requirements.txt; fi

CMD ["python3", "./app.py"]