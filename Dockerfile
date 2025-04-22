# Dockerfile
FROM alpine:3.21

# Install MySQL 5 client and AWS CLI
RUN apk add --no-cache \
    mysql-client \
    aws-cli

CMD ["sh"]
