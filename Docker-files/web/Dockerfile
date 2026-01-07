FROM nginx
LABEL "Project"="Vprofile"
LABEL "Author"="The Whiz"

RUN rm -rf /etc/nginx/conf.d/default.conf
COPY ./nginvproapp.conf /etc/nginx/conf.d/vproapp.conf
