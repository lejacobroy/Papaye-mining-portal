FROM node:latest
RUN apt-get -ydd update
RUN apt-get install -ydd sudo git nano curl

WORKDIR /opt/
RUN git clone https://github.com/lejacobroy/papaye-mining-portal

WORKDIR /opt/papaye-mining-portal
RUN npm install
RUN npm update
RUN rm -rf pool_configs
RUN rm config_example.json

RUN ln -s /opt/config/config.json /opt/papaye-mining-portal/config.json
RUN ln -s /opt/config/pool_configs /opt/papaye-mining-portal/pool_configs

RUN apt-get install -y redis-server

CMD service redis-server restart; node init.js