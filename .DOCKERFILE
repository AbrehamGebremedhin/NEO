FROM neo4j:5.12

# Install APOC and GDS plugins
ENV NEO4JLABS_PLUGINS='["apoc", "gds"]'
ENV NEO4J_AUTH=

# Set memory and configuration for plugins
ENV NEO4J_dbms_memory_pagecache_size=1G
ENV NEO4J_dbms_memory_heap_initial__size=3G
ENV NEO4J_dbms_memory_heap_max__size=3G

# Uncomment the following to allow unrestricted file access for APOC
ENV NEO4J_dbms_security_procedures_unrestricted=apoc.*
ENV NEO4J_dbms_security_procedures_allowlist=apoc.*

EXPOSE 7474 7687
