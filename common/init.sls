common-system-packages:
  pkg.installed:
    - pkgs:
      - gcc
      - git
      - vim-enhanced
      - wget

/root/.bashrc:
  file.managed:
    - source: salt://common/bashrc

/root/.vimrc:
  file.managed:
    - source: salt://common/vimrc

/etc/selinux/config:
  file.managed:
    - source: salt://common/selinux.config

firewalld:
  service.dead:
    - enable: False