FROM nginx:alpine
COPY ./dist/test /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx","-g","daemon off;"]
