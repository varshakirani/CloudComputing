FROM nginx

VOLUME /hypervisor_etc

#Expose port 80
EXPOSE 80

#nginx.conf must be available inside /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/

#create a directory to copy fix-nginx-conf.sh and copy the file onto it
COPY fix-nginx-conf.sh /etc/nginx/

ENV CC_BACKEND_SERVERS = $CC_BACKEND_SERVERS
CMD ./etc/nginx/fix-nginx-conf.sh "$CC_BACKEND_SERVERS" && nginx
