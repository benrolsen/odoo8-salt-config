odoo-user:
  group.present:
    - name: odoo
  user.present:
    - name: odoo
    - fullname: OpenERP user
    - shell: /bin/bash
    - home: /home/odoo
    - createhome: True
    - password: $6$5af6yZEY$LRGrOTvoHza517KRPKt/Akrx1AiKLNH.PlJI64YxhydGG4gYbhlCJWSYo401bcudTeYfXOS.zyw0nv45UHyg4.
    - groups:
      - odoo

/lib/systemd/system/odoo-server.service:
  file.managed:
    - source: salt://odoo8/odoo-systemd-centos7
    - mode: 755

/lib/systemd/system/xvfbd.service:
  file.managed:
    - source: salt://odoo8/xvfbd.service
    - mode: 755

xvfbd:
  service.running
    - enable: True

/etc/odoo/odoo-server.conf:
  file.managed:
    - source: salt://odoo8/odoo-server.conf
    - mode: 755
    - makedirs: True

