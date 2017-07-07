#docker buid -f Dockerfile -t images/

#base image is official nginx container image
FROM nginx

#Expose port 80
EXPOSE 80

#nginx.conf must be available inside /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

#create a directory to copy fix-nginx-conf.sh and copy the file onto it
RUN mkdir script
COPY fix-nginx-conf.sh script/

#Define Volume
RUN mkdir hypervisor_etc
VOLUME /hypervisor_etc

ENTRYPOINT [./script/fix-nginx-conf.sh]
RUN nginx
