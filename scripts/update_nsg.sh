#!/bin/bash
USER_IP=$(curl -s https://api.ipify.org)
echo "USER_IP=$USER_IP" >> $GITHUB_ENV