#!/bin/bash
# Author:Prayag Sangode
# Create a Spring Boot Application
mkdir java-mvn-app
cd java-mvn-app
# Check java version. Below we are downloading as per java version 8
rpm -qa | grep java
curl https://start.spring.io/starter.tgz -d dependencies=webflux,actuator -d javaVersion=8 | tar -xzvf -
./mvnw install
ls -l target/*.jar
