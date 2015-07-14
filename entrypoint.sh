#!/bin/bash

if [ -z "$1" ]
then
    echo "No argument supplied"
fi

if [ "$1" == "agent" ]
then
  echo "Loading config for agent..."
  CONFIG_FILE="/etc/logstash/conf/agent.conf"
else
  if [ "$1" == "processor" ]
  then
    echo "Loading config for processor..."
    CONFIG_FILE="/etc/logstash/conf/processor.conf"
  else
    echo "Argument must be 'processor' or 'agent'."
    exit 1
  fi
fi

logstash -f ${CONFIG_FILE}