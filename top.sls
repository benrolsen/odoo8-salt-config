base:
  '*':
    - common

  'odoovm*':
    - odoo8.database
    - odoo8.packages-centos7
    - odoo8.system
    - odoo8.test-config
    - odoo8.sources

  'minerva':
    - odoo8.database
    - odoo8.minerva-config

  'eowyn':
    - odoo8.packages-centos7
    - odoo8.system
    - odoo8.eowyn-config
    - odoo8.sources