# K8s Deployment Example App

This example app provides a simple Python Flask API which returns a json object.
Its used to visualise a simple change/update in an application.


## build and run
Without using docker-compose:
```
docker build -t app .

docker run -p 5000:5000 app
```

## call
```
curl -s localhost:5000 | grep label

while true; do curl -s localhost:5000 | grep label; sleep 0.1; done
```
