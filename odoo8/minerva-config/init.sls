/var/lib/pgsql/9.3/data/pg_hba.conf:
  file.managed:
    - source: salt://odoo8/minerva-config/pg_hba.conf
    - mode: 600

/var/lib/pgsql/9.3/data/postgresql.conf:
  file.managed:
    - source: salt://odoo8/minerva-config/postgresql.conf
    - mode: 600

/var/lib/pgsql/odoo_backup:
  cron.present:
    - identifier: DBBACKUP_CRON
    - user: postgres
    - minute: 0
    - hour: 1