# Ajout des sources Saltstack Debian 11
/avalon/tmux/.tmux.conf:
  file.managed:
    - name: /etc/apt/sources.list.d/salt.list
    - source: salt://debian/source-list/template/salt.list
    - user: root
    - group: root
    - mode: 644
    - template: jinja