FROM node:20

WORKDIR /usr/src/app

COPY --chown=node:node . .

ENV VITE_BACKEND_URL=http://localhost:3000

RUN npm install

USER node

CMD ["npm", "run", "dev", "--", "--host"]