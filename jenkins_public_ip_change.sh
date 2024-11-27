#!/bin/bash

grep -i "http" /var/lib/jenkins/jenkins.model.JenkinsLocationConfiguration.xml | sudo sed -e "s|http[^<]*|http://$( curl -s https://ifconfig.me)|g" /var/lib/jenkins/jenkins.model.JenkinsLocationConfiguration.xml  > /dev/null 2>&1
sudo systemctl stop jenkins > /dev/null 2>&1
sudo systemctl start jenkins > /dev/null 2>&1
#sudo systemctl status jenkins
