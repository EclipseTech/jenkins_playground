1. Install Docker

Then run the following to run Jenkins in Docker

`docker run -d -p 8080:8080 -p 50000:50000 -v $script_path/jenkins_home:/var/jenkins_home jenkins/jenkins:lts`

Alternatively via the script that does the same

`./run-jenkins.sh`

Log into Jenkins via UI and do initial setup (TODO setup via Docker). Initial password is in the jenkins_home/secrets/initialAdminPassword

2. Install python3 and pip3

Then setup jenkins_home/jjb.ini run the following to use Jenkins Job Builder:

```
python3 -m venv .venv
source .venv/bin/activate
pip3 install jenkins-job-builder

jenkins-jobs --conf jenkins_home/jjb.ini test jenkins/jobs

jenkins-jobs --conf jenkins_home/jjb.ini update jenkins/jobs
```
