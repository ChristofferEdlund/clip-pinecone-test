FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-devel

# Add the public key
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC

RUN apt-get update && apt-get install -y git

ADD requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app

CMD jupyter lab --ip 0.0.0.0 --port=8888 --allow-root