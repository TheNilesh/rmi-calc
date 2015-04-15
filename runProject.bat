@echo off
javac CalcServer.java
javac CalcClient.java
start rmiregistry
start cmd /k java CalcServer calc
TIMEOUT /T 5 /NOBREAK
start cmd /k java CalcClient rmi://localhost/calc