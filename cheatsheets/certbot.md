= Certbot =

== Nginx ==

Add repository
`sudo add-apt-repository ppa:certbot/certbot`

Install certbot
`sudo apt install python-certbot-nginx`

Install https
`sudo certbot --nginx -d <site_name>`

Delete certificats
`sudo certbot delete`

**certbot doesn't support www and non-www cert automaticly, we have to specify both**
`sudo certbot --nginx -d <site_name> -d www.<site_name>`
