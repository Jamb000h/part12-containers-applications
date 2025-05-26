FROM node:20

WORKDIR /usr/src/app

COPY --chown=node:node . .

ENV VITE_BACKEND_URL=http://localhost:8080/api

RUN npm install

USER node

CMD ["npm", "run", "dev", "--", "--host"]