#sudo docker build -t  custom-nginx . --no-cache=true
# sudo docker run --name group17-nginx-container -d -p 8080:80 custom-nginx

##TODO : Mount the volume properly. I feel mounting is the error ecause I cant see any new directories in the container after build abd run -varsha
## TODO : map the port of container to port of VM to chek locally. This is optional -Varsha
#base image is official nginx container image
FROM nginx
#Define Volume
RUN mkdir hypervisor_etc
VOLUME /hypervisor_etc
#Expose port 80
EXPOSE 80

#nginx.conf must be available inside /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/


#create a directory to copy fix-nginx-conf.sh and copy the file onto it
COPY fix-nginx-conf.sh /etc/nginx/



#parameters are backend server IP
RUN ./etc/nginx/fix-nginx-conf.sh "192.168.0.4 192.168.0.3"

ENTRYPOINT ["usr/sbin/nginx"]


