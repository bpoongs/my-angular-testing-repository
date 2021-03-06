FROM nginx:1.17.7-alpine
## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*
## From 'builder' stage copy over the artifacts in dist folder to default nginx
COPY /dist/my-angular-testing-project /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]