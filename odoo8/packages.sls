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
      - python-dateutil
      - python-decorator
      - python-devel
      - python-docutils
      - python-feedparser
      - python-gdata
      - python-gevent
      - python-imaging
      - python-jinja2
      - python-ldap
      - python-libxslt1
      - python-lxml
      - python-mako
      - python-mock
      - python-openid
      - python-passlib
      - python-paramiko
      - python-pip
      - python-psutil
      - python-pybabel
      - python-pychart
      - python-pydot
      - python-pyparsing
      - python-pypdf
      - python-reportlab
      - python-requests
      - python-simplejson
      - python-tz
      - python-unittest2
      - python-vatnumber
      - python-vobject
      - python-webdav
      - python-werkzeug
      - python-xlwt
      - python-yaml
      - python-zsi

/etc/nginx/conf.d/default.conf:
  file.managed:
    - source: salt://odoo8/nginx-default.conf

nginx:
  service.running