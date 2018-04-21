FROM node:8.11

RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/home/app
ENV NODE_ENV=production
ENV PORT=9000

WORKDIR $HOME/site

#RUN npm install --global npm@3.8.1
COPY * ./
RUN npm install

USER app
EXPOSE 9000
CMD [ "npm", "start" ]
