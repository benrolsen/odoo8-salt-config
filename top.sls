base:
  '*':
    - common

  'odoovm*':
    - odoo8.database

  'web*-dev':
    - odoo8.packages-centos7
    - odoo8.system
    - odoo8.sources