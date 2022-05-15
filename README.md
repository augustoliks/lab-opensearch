# lab-opensearch

Lab created to test configuration Filebeat, Logstash, and OpenSearch and OpenSearch stack.

The tool's configuration does not have SSL or authentication plugins enabled. This lab was created to test purposes only, don't apply it in your production infrastructure.

## How To Run 

The lab was created to run over `docker`. To set up container configuration use `docker-compose`.

```bash
$ docker-compose up --build -d 
```

To check logs, run:

```bash
$ docker-compose logs
```

If all containers is `up` state, access the resources from localhost with the following links:

- OpenSearch Dashboards: http://127.0.0.1:5601/
- OpenSearch: http://127.0.0.1:9200/

## Cheat Sheet

Test Logstash configuration syntax:

```bash
$ bin/logstash -f first-pipeline.conf --config.test_and_exit
```

## References

- Generate certificates
> - https://opensearch.org/docs/latest/security-plugin/configuration/generate-certificates/

- Parsing Logs with Logstash
> - https://www.elastic.co/guide/en/logstash/current/advanced-pipeline.html
