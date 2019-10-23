FROM ubuntu
RUN mkdir -p /data/hello-world
COPY ./src /data/hello-world/src
WORKDIR /data/hello-world/src
RUN ls 
RUN apt update -y  && apt  install nodejs -y && apt-get install npm -y && node -v  && npm -v 
RUN npm install -y
RUN apt clean all 
EXPOSE 9000
ENTRYPOINT [ "node", "app.js"  ]