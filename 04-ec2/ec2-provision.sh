#!/bin/bash

yum install ansible -y 
cd /tmp
git clone https://github.com/Amulyaxy/roboshop-ansible-roles.git
cd roboshop-ansible-roles
ansible-palybook -e component = mongodb main.yaml
ansible-palybook -e component = redis main.yaml
ansible-palybook -e component = rabbitmq main.yaml
ansible-palybook -e component = mysql main.yaml
ansible-palybook -e component = catalogue main.yaml
ansible-palybook -e component = user main.yaml
ansible-palybook -e component = cart main.yaml
ansible-palybook -e component = shipping main.yaml
ansible-palybook -e component = payment main.yaml
ansible-palybook -e component = web main.yaml