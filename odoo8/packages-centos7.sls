odoo-system-packages:
  pkg.installed:
    - pkgs:
      - gcc
      - git
      - nginx
      - poppler-utils
      - wget
      - wkhtmltopdf
      - xorg-x11-server-Xvfb

odoo-python-packages:
  pkg.installed:
    - pkgs:
      - graphviz-python
      - libxslt-python
      - pychart
      - pyparsing
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
    - requirements: salt://odoo8/pip-centos7.txt

/etc/nginx/conf.d/default.conf:
  file.managed:
    - source: salt://odoo8/nginx-default-conf

nginx:
  service.running