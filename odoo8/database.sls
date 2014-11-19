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

postgresql-9.3:
  service.running:
    - enable: True

odoo:
  postgres_user.present:
    - createdb: True
    - superuser: True
    - password: hydrophobia
    - require:
      - service: postgresql-9.3
  postgres_database.present:
    - owner: odoo
    - require:
      - service: postgresql-9.3
