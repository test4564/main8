#base image
FROM ubuntu:20.04
USER root
EXPOSE 443
#copying stuff
COPY . /app


# RUN sudo apt-get install update -y
# #setting permissions
# RUN chmod +x /app/conf.d/websockify.sh \
# 	&& chmod +x /app/start.sh \
# 	&& chmod +x /app/expect_vnc.sh 	

RUN chmod +x /app/start.sh

# apt-get install fakeroot software-properties-common python3.8

# 1
RUN apt-get update -y
RUN apt-get install sudo wget -y
# RUN apt-get install python3 python3-pip -y


# RUN apt-get install fakeroot -y

# 2
# RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

WORKDIR "/app"
# RUN pip3 install -r requirements.txt
#starting up
CMD ["bash", "start.sh"]
