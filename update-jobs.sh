#!/bin/bash -ex
script_path=$(dirname $(readlink -f $0))
cd $script_path

python3 -m venv .venv
source .venv/bin/activate
pip3 install jenkins-job-builder

jenkins-jobs --conf jenkins_home/jjb.ini test jenkins/jobs

jenkins-jobs --conf jenkins_home/jjb.ini update jenkins/jobs
