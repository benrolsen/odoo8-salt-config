/etc/odoo/odoo-server.conf:
  file.managed:
    - source: salt://odoo8/eowyn-config/odoo-server.conf
    - mode: 755
    - makedirs: True

/etc/nginx/conf.d/odoo.conf:
  file.managed:
    - source: salt://odoo8/eowyn-config/nginx-odoo.conf

/etc/logrotate.d/odoo:
  file.managed:
    - source: salt://odoo8/eowyn-config/logrotate_odoo
    - mode: 644

