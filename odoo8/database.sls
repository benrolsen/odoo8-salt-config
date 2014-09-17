odoo-database-packages:
  pkg.installed:
    - pkgs:
      - postgresql-server
      - postgresql-devel
      - postgresql-contrib
      - python-psycopg2

postgresql-setup initdb:
  cmd.run:
    - unless: test -f /var/lib/pgsql/data/PG_VERSION
    - require:
      - pkg: odoo-database-packages

/var/lib/pgsql/data/pg_hba.conf:
  file.managed:
    - source: salt://odoo8/pg_hba.conf
    - mode: 600

postgresql:
  service.running:
    - enable: True
    - watch:
      - file: /var/lib/pgsql/data/pg_hba.conf

odoo:
  postgres_user.present:
    - createdb: True
    - superuser: True
    - password: odoo
    - require:
      - service: postgresql
  postgres_database.present:
    - owner: odoo
    - require:
      - service: postgresql
