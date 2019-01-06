## Build the image and serve to 0.0.0.0:8080

```bash
docker build -t local/helloworld:latest .
```

```bash
 docker run --net=host -p 8080:8080 local/helloworld
```