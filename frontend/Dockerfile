FROM node:current-alpine3.16  as build-stage

WORKDIR /app
ENV API_URL http://nodeapi-env.eba-nmpx3itx.us-east-1.elasticbeanstalk.com
COPY package.json .
RUN npm install
COPY . .


RUN npm run build


FROM nginx:1.17.0-alpine

COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
ENV API_URL http://lb-2-1187940550.us-east-1.elb.amazonaws.com
RUN sed -i "s|{{API_URL}}|$API_URL|g" /etc/nginx/conf.d/default.conf
CMD nginx -g 'daemon off;'
