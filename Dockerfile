FROM microsoft/aspnetcore-build:1.0-1.1
RUN mkdir /src
RUN mkdir /artifacts
WORKDIR /src
VOLUME ["/src", "/artifacts", "/root/.nuget"]

# INSTALL NODEJS
RUN apt-get -y update && apt-get -y install nodejs && npm install gulp -g && npm install -g gulp-cli

RUN useradd jenkins --shell /bin/bash --create-home
USER jenkins
