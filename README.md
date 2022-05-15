# lab-opensearch

Lab created to test configuration Filebeat, Logstash, and OpenSearch and OpenSearch stack.

The tool's configuration does not have SSL or authentication plugins enabled. This lab was created to test purposes only, don't apply it in your production infrastructure.

Project directory layout:

```bash
├── docker-compose.yml              # containers config state
├── filebeat                        # filebeat container files
│   ├── Dockerfile                  # filebeat dockerfile
│   ├── filebeat.yml                # filebeat main config file
│   └── log                         # fake log directory (shared like docker volume)
│       └── *.log                   # fake logs 
├── logstash                        # logstash container file
│   ├── config                      # logstash config directory
│   │   ├── logstash.yml            # logstash main config file
│   │   └── pipelines.yml           # pipelines manifest file
│   ├── Dockerfile                  # logstash Dockerfile
│   └── pipeline                    # pipeline directory
│       └── pipeline-1.cfg          # pipeline source code
├── opensearch                      # opensearch container config files
│   ├── Dockerfile                  # opensearch Dockerfile 
│   └── opensearch.yml              # opensearch main config file 
└── opensearch-dashboards           # opensearch-dashboards container config files
    ├── Dockerfile                  # opensearch-dashboards Dockerfile
    └── opensearch_dashboards.yml   # opensearch-dashboards main config file
```

## How To Run 

The lab was created to run over `docker`. To set up container configuration use `docker-compose`.

```bash
$ docker-compose up --build -d 
```

To check logs, run:

```bash
$ docker-compose logs
```

The resources can be accessed with the following links:

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
