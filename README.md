# docker-hybrisdemo

To start hybris, run:

```
docker run -p 9001-9002:9001-9002/tcp yquan/hybrisdemo run
```

Wait about 5 ~ 10 minutes to allow hybris fully started.

If it's the first time running the docker image, go to http://xxx.xxx.xxx.xxx:9001/hac (replace *xxx.xxx.xxx.xxx* with your docker host IP address), it shows the initialize page, follow hybris guide to initialize the system.

