# Installation du pkg tmux
/global/tmux:
  pkg.installed:
    - name: tmux


# Ajout du .tmux.conf personnalisé
/global/tmux/.tmux.conf:
  file.managed:
    - name: /root/.tmux.conf
    - source: salt://global/tmux/template/.tmux.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja