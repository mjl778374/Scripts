#!/bin/bash

systemctl start sshd
ssh -L 8091:jorge:80 localhost

#exit
