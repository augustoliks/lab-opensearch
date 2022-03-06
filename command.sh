filebeat setup -e --strict.perms=false \
    --pipelines --modules system,nginx \
    -E output.logstash.enabled=false \
    -E output.elasticsearch.hosts="http://localhost:9200" # \
    # -E setup.template.name="carlos" \
    # -E setup.template.pattern="carlos-*"
