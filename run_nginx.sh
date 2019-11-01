if [ -z $PORT ]
then 
	export NGINX_PORT=80
else
	export NGINX_PORT=$PORT
fi
#envsubst < /etc/nginx/sites-enabled/default > /etc/nginx/sites-enabled/default
echo "pre sed"
sed -i 's/\$NGINX_PORT/'$PORT'/g' /etc/nginx/sites-enabled/default
echo "post sed"
exec "/usr/sbin/nginx" -g "daemon off;" 
