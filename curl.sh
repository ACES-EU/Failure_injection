#!/bin/bash
for i in $(seq 1 10000); do curl -s -o /dev/null "http://192.168.20.107"; done