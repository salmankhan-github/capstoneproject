FROM ubuntu
  
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install apache2 -y

RUN apt-get install apache2-utils -y

RUN apt-get clean

COPY index.php /var/www/html/index.php

COPY image.png /var/www/html/image.png

EXPOSE 80

CMD ["apache2ctl","-D","FOREGROUND"]
