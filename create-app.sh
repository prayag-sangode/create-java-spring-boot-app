#!/bin/bash
# Author:Prayag Sangode
# Install Maven on CentOS7
yum -y install maven
# Create a Spring Boot Application
mkdir java-mavn-app
cd java-mavn-app
# Check java version. Below we are downloading as per java version 8
rpm -qa | grep java
curl https://start.spring.io/starter.tgz -d dependencies=webflux,actuator -d javaVersion=8 | tar -xzvf -
./mvnw install
ls -l target/*.jar
