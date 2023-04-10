FROM ubuntu:22.04
#This grabs ubuntu and the specified version 
RUN apt-get update 
#Runs command to update ubuntu packages
RUN apt-get install -y nginx zip curl
#runs command to install nginx, zip, and curl
RUN echo "daemon off;" >>/etc/nginx/nginx.conf
#this tells nginx to stay in the foreground, used for best practice for 1 container = 1 process / one server container has only one service
#alternatively dameon on is default so nginx server will start in background. This allows nginx and other services that run and talk to each other 1 server runs many services
RUN curl -o /var/www/html/master.zip -L https://codeload.github.com/gabrielecirulli/2048/zip/master
#runs curl command to download file -o from the -L ocation
RUN cd /var/www/html && unzip master.zip && mv 2048-master/* . && rm -rf 2048-master master.zip
#change directory to the directory; unzips master.zip folder; moves contents of that folder to the current path (.) ; removes master.zip/2048-master
EXPOSE 80
#opens the port to access the game which is port 80 HTTP
CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
#this command starts the game