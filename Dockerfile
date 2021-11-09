FROM --platform=linux/x86_64 node
ENV PYTHONUNBUFFERED 1
ENV HOME=/code
RUN mkdir $HOME

RUN apt-get update
ENV TZ Asia/Tokyo

RUN apt-get update
RUN apt-get install -y sudo python3 python3-pip
RUN curl https://cli-assets.heroku.com/install.sh | sh

WORKDIR $HOME

ADD requirements.txt $HOME
RUN pip3 install --upgrade pip 
RUN pip install -r requirements.txt
ADD . $HOME