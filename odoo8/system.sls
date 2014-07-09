openerp-user:
  group.present:
    - name: odoo
  user.present:
    - name: odoo
    - fullname: OpenERP user
    - shell: /bin/bash
    - home: /opt/odoo
    - createhome: True
    - password: $6$MZu1Cwl1ZuFquSCL$1dxztdgc9kpuWIXFi1NkCOTX3KhdvTP7M7f8O2L01g8ah8NiD9L41JUxOWfapGhRM487nFGQldWU6USs/opFa/
    - groups:
      - odoo

/var/log/odoo:
  file.directory:
    - user: odoo
    - group: odoo
    - dir_mode: 755

/opt/odoo-custom-addons:
  file.directory:
    - user: odoo
    - group: odoo
    - dir_mode: 755

/opt/odoo-test-addons:
  file.directory:
    - user: odoo
    - group: odoo
    - dir_mode: 755

/opt/run:
  file.directory:
    - user: odoo
    - group: odoo
    - dir_mode: 755

/etc/init.d/odoo-server:
  file.managed:
    - source: salt://odoo8/odoo-init-ubuntu
    - mode: 755

/etc/odoo/odoo-server.conf:
  file.managed:
    - source: salt://odoo8/odoo-server.conf
    - mode: 755
    - makedirs: True