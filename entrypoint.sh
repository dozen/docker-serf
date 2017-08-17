#!/bin/bash

serf agent -discover=${1} -bind=$(grep "$(hostname)" /etc/hosts | cut -f1)
