docker pull redis

docker run --name my-redis -p 6379:6379 -v /path/to/data:/data -d redis
