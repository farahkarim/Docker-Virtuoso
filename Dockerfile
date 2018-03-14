version: '2.1'
services:
   d1:
    image: tenforce/virtuoso:1.3.1-virtuoso7.2.4
    environment:
     SPARQL_UPDATE: "true"
     DEFAULT_GRAPH: "http://www.linkedsensordataD1.com/D1-graph"
    volumes:
     - ./data/virtuosoD1:/data
    ports:
     - "8890:8890"

   d2:
    image: tenforce/virtuoso:1.3.1-virtuoso7.2.4
    environment:
     SPARQL_UPDATE: "true"
     DEFAULT_GRAPH: "http://www.linkedsensordataD2.com/D2-graph"
    volumes:
     - ./data/virtuosoD2:/data
    ports:
     - "8891:8890"

   d3:
    image: tenforce/virtuoso:1.3.1-virtuoso7.2.4
    environment:
     SPARQL_UPDATE: "true"
     DEFAULT_GRAPH: "http://www.linkedsensordataD3.com/D3-graph"
    volumes:
     - ./data/virtuosoD3:/data
    ports:
     - "8892:8890"
