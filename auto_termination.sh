#!/bin/bash
status=$(docker logs $HOSTNAME | tail -1 | grep Running)
if  [ -z $status ]; then
    echo "No jobs are running"
    docker kill $HOSTNAME 
fi