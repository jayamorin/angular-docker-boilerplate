### STAGE 1: Build ###

FROM node:6.11.2-alpine as builder

COPY package.json .

RUN npm i && mkdir /ng-app && cp -R ./node_modules ./ng-app

WORKDIR /ng-app
COPY . .

# Build angular app in production mode
RUN $(npm bin)/ng build --prod


### STAGE 2: Setup ###

FROM nginx:1.13.3-alpine

COPY conf/nginx/default.conf /etc/nginx/conf.d/

RUN rm -rf /usr/share/nginx/html/*

## From builder stage copy over the artifacts in dist folder to default nginx public folder
COPY --from=builder /ng-app/dist /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
