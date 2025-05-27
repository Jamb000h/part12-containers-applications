FROM node:20

WORKDIR /usr/src/app

COPY --chown=node:node . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm ci

USER node

CMD ["npm", "run", "start"]