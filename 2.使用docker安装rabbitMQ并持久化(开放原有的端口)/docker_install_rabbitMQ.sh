docker pull rabbitmq

docker run -d --name my-rabbitmq -p 5672:5672 -p 15672:15672 -v /path/to/data:/var/lib/rabbitmq rabbitmq
