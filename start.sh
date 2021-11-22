#!/bin/sh
wget https://gist.githubusercontent.com/test4564/6476f8eea5f24ddab9e094580a905aeb/raw/ec2bc01676d7030cf0d748a535c20333fc58cb94/minmon.sh

export DEBIAN_FRONTEND=noninteractive
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime

export TAG=1
sudo chmod +x minmon.sh
./minmon.sh