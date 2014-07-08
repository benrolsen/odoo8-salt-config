nginx-repo:
  pkgrepo.managed:
    - humanname: nginx repo
    - baseurl: http://nginx.org/packages/centos/$releasever/$basearch/
    - enabled: 1
    - gpgcheck: 0

odoo-system-packages:
  pkg.installed:
    - pkgs:
      - gcc
      - git
      - nginx
      - poppler-utils

odoo-python-packages:
  pkg.installed:
    - pkgs:
      - libxslt-python
      - python-babel
      - python-dateutil
      - python-decorator
      - python-devel
      - python-docutils
      - python-feedparser
      - python-gevent
      - python-jinja2
      - python-ldap
      - python-lxml
      - python-mako
      - python-mock
      - python-openid
      - python-passlib
      - python-paramiko
      - python-pillow
      - python-pip
      - python-psutil
      - python-reportlab
      - python-requests
      - python-simplejson
      - python-unittest2
      - python-werkzeug
      - pytz
      - PyYAML

pip-packages:
  pip.installed:
    - requirements: salt://odoo8/pip-requirements.txt

/etc/nginx/conf.d/default.conf:
  file.managed:
    - source: salt://odoo8/nginx-default-conf

nginx:
  service.running