#!/bin/bash
script_path=$(dirname $(readlink -f $0))
docker run -d -p 8080:8080 -p 50000:50000 -v $script_path/jenkins_home:/var/jenkins_home jenkins/jenkins:lts
