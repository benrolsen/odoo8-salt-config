#https://github.com/odoo/odoo.git:
#  git.latest:
#    - rev: 8.0
#    - user: odoo
#    - target: /opt/odoo/odoo
#    - force: True
#
https://github.com/benrolsen/openerp-custom-addons.git:
  git.latest:
    - rev: master
    - user: odoo
    - target: /home/odoo/openerp-custom-addons
    - force: True

https://github.com/OCA/web.git:
  git.latest:
    - rev: 8.0
    - user: odoo
    - target: /home/odoo/oca/web
    - force: True
