FROM almalinux:8
LABEL maintainer="naveenkm1523@gmail.com"
RUN dnf install -y httpd zip unzip && \
    dnf clean all
ADD https://www.free-css.com/assets/files/free-css-templates/download/pages254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22