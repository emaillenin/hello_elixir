#!/usr/bin/env bash
while true
do
echo `date`
curl "http://localhost:8080?cost=100"
sleep 0.2
done