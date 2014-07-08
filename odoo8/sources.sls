odoo-sources:
  cmd.run:
    - name: git clone git@github.com:odoo/odoo.git /opt/odoo
    - user: odoo
    - unless: test -d /opt/odoo

custom-addons-sources:
  cmd.run:
    - name: git clone git@github.com:benrolsen/openerp-custom-addons.git /opt/odoo-custom-addons
    - user: odoo
    - unless: test -d /opt/odoo
