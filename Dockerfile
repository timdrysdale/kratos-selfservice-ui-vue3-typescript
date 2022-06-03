FROM node:lts-alpine

# install simple http server for serving static content
RUN npm install -g http-server-spa

# make the 'app' folder the current working directory
WORKDIR /app


# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY ./dist/. /app/dist/

EXPOSE 8080
CMD [ "http-server-spa", "dist", "index.html", "8080" ]
