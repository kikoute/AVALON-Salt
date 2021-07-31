# Vérification si le service ssh est activé
/avalon/ssh/sshd_running:
  service.running:
    - name: sshd
    - enable: True
    - reload: True
    - watch:
      - pkg: openssl


# Installation du pkg ssh
/avalon/ssh/ssh_pkg:
  pkg.installed:
    - name: openssl


# Installation de sshd_config d'AVALON
/avalon/ssh/sshd_config:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://avalon/ssh/template/sshd_config
    - user: root
    - group: root
    - mode: 644
    - template: jinja


# Installation de ssh_config d'AVALON
/avalon/ssh/ssh_config:
  file.managed:
    - name: /etc/ssh/ssh_config
    - source: salt://avalon/ssh/template/ssh_config
    - user: root
    - group: root
    - mode: 644
    - template: jinja


# Notification du bon déroulement de la configuration
/avalon/ssh:
  test.show_notification:
    - name: /avalon/ssh_avalon
    - text: 'SSH is OK !'