FROM nginx
ADD ./nginx.conf /etc/nginx/nginx.conf
RUN sed -i -e"s/include \/etc\/nginx\/conf.d.*//g" /etc/nginx/nginx.conf
ONBUILD ADD ./nginx.app.conf /etc/nginx/sites-enabled/
RUN mkdir -p /etc/nginx/sites-enabled
