# Modification du fichier /etc/motd
/global/motd:
  file.managed:
    - name: /etc/motd
    - source: salt://global/motd/template/motd
    - user: root
    - group: root
    - mode: 644
    - template: jinja