FROM gcr.io/kaniko-project/executor:latest as kaniko

FROM busybox
COPY --from=kaniko /kaniko/executor /kaniko/

#FROM klakegg/hugo:0.83.1-ext-alpine-ci AS build
#RUN apk add -U git
#COPY . /src
#RUN make init
#RUN make build

#FROM nginx:1.19.4-alpine
#RUN mv /usr/share/nginx/html/index.html /usr/share/nginx/html/old-index.html
#COPY --from=build /src/public /usr/share/nginx/html
#EXPOSE 80
