# Modification du fichier /etc/motd
/avalon/motd:
  file.managed:
    - name: /etc/motd
    - source: salt://avalon/motd/template/motd
    - user: root
    - group: root
    - mode: 644
    - template: jinja