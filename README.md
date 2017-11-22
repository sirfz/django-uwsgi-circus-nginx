checking things 2

# django-uwsgi-circus-nginx

The newer versions of Django are going to support only Python3. A production
Django webapp requires a mix of uwsgi, nginx and supervisord. Supervisord is used to
bring up the services if any of them fail/crash for any reason. Supervisord however,
supports only Python 2.x.  

Circus however does support Python 3.x. This repo is to be a working example of a comparison of
1. Production ready webapp with Circus instead of Supervisord.
2. Production ready webapp with Nginx and uwsgi with upstart.
