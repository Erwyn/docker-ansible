#!/bin/bash

mkdir -p /root/.ssh
cp -r /ssh/* /root/.ssh/
chown -R root:root /root/.ssh/*
chmod -R 700 /root/.ssh
export HOME=/root
cd /data
/bin/bash
