@echo off
javac CalcServer.java
rmic CalcServer
javac CalcClient.java
rmic CalcClient
start rmiregistry
TIMEOUT /T 5 /NOBREAK
start cmd /k java CalcServer calc
TIMEOUT /T 5 /NOBREAK
start cmd /k java CalcClient rmi://localhost/calc
