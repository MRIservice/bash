#! /bin/bash

url="https://proof.ovh.net/files/1Mb.dat"

curl ${url} -O

# curl -I ${url} -O  # Pull header information
