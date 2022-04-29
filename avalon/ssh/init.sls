# Vérification si le service ssh est activé
/avalon/ssh/sshd_running:
  service.running:
    - name: sshd
    - enable: True
    - reload: True
    - watch:
      - pkg: openssl
      - file: /etc/ssh/sshd_config.d/sshd_config_avalon.conf


# Installation du pkg ssh
/avalon/ssh/ssh_pkg:
  pkg.installed:
    - name: openssl


# Vérification de sshd_config Debian 11 standart
/avalon/ssh/sshd_config:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://avalon/ssh/template/sshd_config
    - user: root
    - group: root
    - mode: 644
    - template: jinja


# Ajout de sshd_config d'AVALON dans sshd_config.d
/avalon/ssh/sshd_config.d/sshd_config_avalon.conf:
  file.managed:
    - name: /etc/ssh/sshd_config.d/sshd_config_avalon.conf
    - source: salt://avalon/ssh/template/sshd_config_avalon.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja


# Vérification de ssh_config Debian 11 standart
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