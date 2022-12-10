FROM ubuntu:focal


RUN apt update

RUN DEBIAN_FRONTEND=noninteractive apt install -y apache2

RUN cd /var/www/html/

RUN rm -f /var/www/html/index.html

RUN touch /var/www/html/index.html

RUN echo "<html>" >> /var/www/html/index.html 

RUN echo "<head>" >> /var/www/html/index.html 

RUN echo "<title> I love Docker! </title>" >> /var/www/html/index.html 

RUN echo "</head>" >> /var/www/html/index.html 

RUN echo "<body>" >> /var/www/html/index.html 

RUN echo "<p> Hello world! I am Misha and I study at ITMO University! </p> " >> /var/www/html/index.html 

RUN echo "</body>" >> /var/www/html/index.html 

RUN echo "</html>" >> /var/www/html/index.html 
