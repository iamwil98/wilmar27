FROM httpd
RUN rm -f /usr/local/apache2/htdo


RUN mkdir /wilmar-27
RUN chmod 777 /wilmar-27
COPY recursos/img1.jpg /wilmar-27
COPY main.sh /wilmar-27
RUN chmod 777 /wilmar-27/main.sh
RUN cd /wilmar-27
RUN  /wilmar-27/main.sh
COPY 2/template2/* /usr/local/apache2/htdocs/
CMD ["httpd-foreground"]