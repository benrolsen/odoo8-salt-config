postfix:
  service.dead
    - enable: False

/var/lib/pgsql/9.3/data/pg_hba.conf:
  file.managed:
    - source: salt://odoo8/test-config/pg_hba.conf
    - mode: 600

/var/lib/pgsql/9.3/data/postgresql.conf:
  file.managed:
    - source: salt://odoo8/test-config/postgresql.conf
    - mode: 600

/etc/nginx/conf.d/odoo.conf:
  file.managed:
    - source: salt://odoo8/test-config/nginx-odoo.conf

/etc/odoo/odoo-server.conf:
  file.managed:
    - source: salt://odoo8/test-config/odoo-server.conf
    - mode: 755
    - makedirs: True

