# docker elasticstack

## Version 

Elastic Search : 7.14.0

Kibana : 7.14.0

APM Server : 7.14.0


## Start

~~~
docker-compose up -d
~~~

(it'll take some time.)

access http://localhost:5601/app/kibana

## Stop

~~~
docker-compose down
~~~

## APM server

if you use the apm , set the following param in your apm agents.

~~~
server_url: 'http://apm-server:8200'
~~~
