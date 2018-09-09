FROM node:10.10
EXPOSE 8080
EXPOSE 3333
EXPOSE 3256
RUN apt-get update
RUN apt-get install -ydd sudo git nano curl

#WORKDIR /opt/
ADD ./ /opt/papaye/
#git clone https://github.com/lejacobroy/papaye-mining-portal

WORKDIR /opt/papaye/
RUN npm install
RUN npm update
#RUN rm -rf pool_configs
#RUN rm config_example.json

#RUN ln -s /opt/config/config.json /opt/papaye-mining-portal/config.json
#RUN ln -s /opt/config/pool_configs /opt/papaye-mining-portal/pool_configs

#COPY /config/ /opt/papaye/

CMD node init.js