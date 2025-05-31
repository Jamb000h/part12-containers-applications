FROM node:20 AS build-stage 

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm ci

RUN CI=true npm test

RUN npm run build

FROM nginx:1.25-alpine

COPY --from=build-stage /usr/src/app/build /usr/share/nginx/html