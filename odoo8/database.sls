odoo-database-packages:
  pkg.installed:
    - pkgs:
      - postgresql93-server
      - postgresql93-devel
      - postgresql93-contrib
      - python-psycopg2

/usr/pgsql-9.3/bin/postgresql93-setup initdb:
  cmd.run:
    - unless: test -f /var/lib/pgsql/9.3/data/PG_VERSION
    - require:
      - pkg: odoo-database-packages

/var/lib/pgsql/9.3/data/pg_hba.conf:
  file.managed:
    - source: salt://odoo8/pg_hba.conf
    - mode: 600

/var/lib/pgsql/9.3/data/postgresql.conf:
  file.managed:
    - source: salt://odoo8/postgresql.conf
    - mode: 600

postgresql-9.3:
  service.running:
    - enable: True

odoo:
  postgres_user.present:
    - createdb: True
    - superuser: True
    - password: odoo
    - require:
      - service: postgresql-9.3
  postgres_database.present:
    - owner: odoo
    - require:
      - service: postgresql-9.3
