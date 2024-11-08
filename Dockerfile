# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy your HTML and image files to the Nginx html directory
COPY index.html /usr/share/nginx/html
COPY logo.jpg /usr/share/nginx/html

RUN mkdir -p /usr/share/nginx/html/api
COPY ./api/index.html /usr/share/nginx/html/api
COPY ./api/get-document.html /usr/share/nginx/html/api
COPY ./api/styles.css /usr/share/nginx/html/api
COPY ./api/codeblock.css /usr/share/nginx/html/api
COPY ./api/copyButton.js /usr/share/nginx/html/api
COPY ./api/delete-document.html /usr/share/nginx/html/api
COPY ./api/post-create-from-template.html /usr/share/nginx/html/api
COPY ./api/logo.jpg /usr/share/nginx/html/api
COPY ./api/get-document-download.html /usr/share/nginx/html/api
COPY ./api/key.gif /usr/share/nginx/html/api
COPY ./api/create-document-form-metadata.jpg /usr/share/nginx/html/api
COPY ./api/create-document-form.jpg /usr/share/nginx/html/api
COPY ./api/create-document-template.jpg /usr/share/nginx/html/api
COPY ./api/introduction.html /usr/share/nginx/html/api
COPY ./api/get-document-pagination.html /usr/share/nginx/html/api

RUN mkdir -p /usr/share/nginx/html/sso
COPY ./sso/docq-okta-sso.png /usr/share/nginx/html/sso
COPY ./sso/index.html /usr/share/nginx/html/sso
COPY ./sso/logo.jpg /usr/share/nginx/html/sso
COPY ./sso/sso-okta-step-01.png /usr/share/nginx/html/sso
COPY ./sso/sso-okta-step-02.png /usr/share/nginx/html/sso
COPY ./sso/sso-okta-step-03.png /usr/share/nginx/html/sso
COPY ./sso/sso-okta-step-04.png /usr/share/nginx/html/sso
COPY ./sso/sso-okta-step-05.png /usr/share/nginx/html/sso
COPY ./sso/sso-okta-step-06.png /usr/share/nginx/html/sso

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
