systemctl start sshd

if [ $? -eq 0 ]; then
    ssh -L 8091:jorge:80 localhost

    if [ $? -eq 0 ]; then
        exit 0
    else
        exit 2
    fi
else
    exit 1
fi

