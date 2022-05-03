# Installation du pkg tmux
/debian/tmux:
  pkg.installed:
    - name: tmux


# Ajout du .tmux.conf personnalisé
/debian/tmux/.tmux.conf:
  file.managed:
    - name: /root/.tmux.conf
    - source: salt://debian/tmux/template/.tmux.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja