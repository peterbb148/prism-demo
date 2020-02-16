FROM node

WORKDIR /app
COPY swagger-tracking.json swagger-tracking.json

# If you have native dependencies, you'll need extra tools
# RUN apk add --no-cache make gcc g++ python

RUN npm install -g @stoplight/prism-cli

EXPOSE 4010

CMD ["prism", "mock", "-d", "-h", "0.0.0.0", "swagger-tracking.json"]
