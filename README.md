# lab-opensearch

Lab created to tests configuration Filebeat, Logstash and OpenSearch and OpenSearch stack.

The tools configuration not has SSL or authentication plugins enabled. This lab was created to tests purposes only, dont apply it in your production infrastrature.

## How To Run 

The lab was created to run over `docker`. To set up containers configuration was used `docker-compose`.

```bash
$ docker-compose up --build -d 
```

To check logs, run:

```bash
$ docker-compose logs
```

If all containers is `up` state, access the resources from localhost with following links:

- OpenSearch Dashboards: http://127.0.0.1:5601/
- OpenSearch: http://127.0.0.1:5601/

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
