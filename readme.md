# Prism

This implements a Prism mocking server based on a swagger file in a Docker Container.

See https://github.com/stoplightio/prism

# Building the image

```
docker build -t peterbb148/prism-demo .
```

For Raspberry Pi 4

```
docker buildx build --platform linux/arm/v7 -t peterbb148/prism-demo --push .
```

# Pushing the image to Docker Hub

```
docker push peterbb148/prism-demo
```

# Running the image

```
docker run --rm -d -p 80:4010 peterbb148/prism-demo
```