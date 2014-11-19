common-system-packages:
  pkg.installed:
    - pkgs:
      - gcc
      - git
      - vim-enhanced
      - wget

/root/.bashrc:
  file.managed:
    - source: salt://odoo8/bashrc

/root/.vimrc:
  file.managed:
    - source: salt://odoo8/vimrc

/etc/selinux/config:
  file.managed:
    - source: salt://odoo8/selinux.config

