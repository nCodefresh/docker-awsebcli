FROM ubuntu:14.04

# Install packages
RUN apt-get -y update
RUN apt-get install -y -q \
    unzip \
    curl \
    git \
    python \
    python-dev \
    python-distribute \
    python-pip

# Check python version
RUN python --version

# Install pip
#RUN curl -O https://bootstrap.pypa.io/get-pip.py
#RUN python3 get-pip.py --user
ENV PATH ~/.local/bin:$PATH
RUN pip --version

# Install awsebcli
RUN pip install awsebcli --upgrade --user
RUN eb --version

