As docker cannot connect to the network by default, so we need to make docker connect the network
by the code `docker run --net=host xxx/image` or you can specify the bridge mode.

#Can't get logs
And that's not enough to specify the filebeat.yml for filebeat. you still need specify the logs directory
 for filebeat.yml by `docker run -v /xxx/logs/:/path/to/logs/`. 
