# AWS Logstash Config

This is a preconfigured extension of the detail Logstash container on dockerhub. There are two configurations available:

 - **Agent**: Listens for log file changes and those passed into it via stdin, filters them and posts them to an SQS queue.
 - **Processor**: Consumes the SQS queue and posts the messages in Elasticsearch.

## Launching

For usage examples please see the unit files in [the Cloudformations repo](https://github.com/ElevateCapitalLtd/cloudformations).

Basic usage for processor:

    docker run quay.io/elevate_invest/aws-logging processor
    
...and the agent:
    
    docker run quay.io/elevate_invest/aws-logging agent
