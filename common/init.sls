common-system-packages:
  pkg.installed:
    - pkgs:
      - gcc
      - git
      - vim-enhanced
      - wget

/root/.bashrc:
  file.managed:
    - source: salt://common-files/bashrc

/root/.vimrc:
  file.managed:
    - source: salt://common-files/vimrc

/etc/selinux/config:
  file.managed:
    - source: salt://common-files/selinux.config

firewalld:
  service.dead:
    - enable: False