base:
  '*':
    - common

  'odoovm*':
    - odoo8.database
    - odoo8.packages-centos7
    - odoo8.system
    - odoo8.test-config
    - odoo8.sources

  'minerva.imsar.us':
    - odoo8.database
    - odoo8.minerva-config

  'eowyn.imsar.us':
    - odoo8.packages-centos7
    - odoo8.system
    - odoo8.eowyn-config
    - odoo8.sources