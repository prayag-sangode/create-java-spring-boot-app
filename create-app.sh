#!/bin/bash
# Author:Prayag Sangode
# Create a Spring Boot Application
# Check java version. Below we are downloading as per java version 8
mkdir ~/java-mvn-app
cd ~/java-mvn-app
rpm -qa | grep java
curl https://start.spring.io/starter.tgz -d dependencies=webflux,actuator -d javaVersion=8 | tar -xzvf ~/java-mvn-app
./mvnw install
ls -l ~/java-mvn-app/target/*.jar
