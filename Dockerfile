# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.21.0
COPY checks_bulk_set.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
