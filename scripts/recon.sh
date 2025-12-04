#!/bin/bash

echo "LINUX HOROSCOPE: KNOW YOUR MACHINE"
echo "=================================="
echo "[User and System]"
echo "User: $USER"
echo "HostName: $(hostname)"
echo 

echo "[OS]"
echo "OS Name: $(grep "^PRETTY_NAME" /etc/os-release | cut -d= -f2 | tr -d "\"")"
echo "Kernel Name: $(uname -r)"
echo "Kernel Version: $(uname -r | cut -d- -f1)"
echo 

echo "[CPU]"
echo "CPU Model: $(lscpu | grep "Model name:" | tr -s ' ' | cut -d: -f2)"
echo "Architecture: $(lscpu | grep "Architecture:" | tr -s ' ' | cut -d: -f2)"
echo "Operation Modes: $(lscpu | grep "CPU op-mode(s):" | tr -s ' ' | cut -d: -f2)"
echo "Byte Order: $(lscpu | grep "Byte Order:" | tr -s ' ' | cut -d: -f2)"
echo "Number of Sockets: $(lscpu | grep "Socket(s):" | tr -s ' ' | cut -d: -f2)"