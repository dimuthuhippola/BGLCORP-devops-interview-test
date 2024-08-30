# Stage 1: Create the index.html file
FROM alpine:latest AS html-writer

RUN echo '<p>Hello World</p>' > index.html

# Stage 2: Use the Nginx image and copy the index.html
FROM nginx:latest

# Copy the index.html file from the html-writer stage
COPY --from=html-writer index.html /usr/share/nginx/html/index.html

# Print "starting nginx" and start nginx in the foreground
CMD ["sh", "-c", "echo 'starting nginx' && nginx -g 'daemon off;'"]