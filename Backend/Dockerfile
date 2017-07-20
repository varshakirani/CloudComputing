#docker build -f Dockerfile -t images/

#base image is official nginx container image
FROM nginx

#Define Volume

VOLUME /hypervisor_etc

#Expose port 80
EXPOSE 80


#nginx.conf must be available inside /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/

#create a directory to copy fix-nginx-conf.sh and copy the file onto it
COPY fix-nginx-conf.sh /etc/nginx/

CMD ./etc/nginx/fix-nginx-conf.sh && nginx
