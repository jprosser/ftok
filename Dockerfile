FROM rockylinux:latest

# root user stuff
RUN yum update -y
RUN yum install python3 -y
RUN useradd -ms /bin/bash py

# normal service account stuff
USER py
WORKDIR /home/py

COPY ./flaskapp flaskapp
COPY ./requirements.txt .
COPY ./setup.sh .
COPY ./run.sh .
RUN  ./setup.sh

CMD ["/home/py/run.sh"]
