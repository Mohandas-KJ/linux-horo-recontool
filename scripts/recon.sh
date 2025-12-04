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