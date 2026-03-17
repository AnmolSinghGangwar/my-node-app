FROM registry.access.redhat.com/ubi8/nodejs-18

WORKDIR /app

COPY package.json ./

USER root
RUN npm install

COPY . .

RUN chown -R 1001:0 /app
USER 1001

EXPOSE 3000

CMD ["npm", "start"]

