# Installation du pkg tmux
/avalon/tmux:
  pkg.installed:
    - name: tmux


# Ajout du .tmux.conf personnalisé
/avalon/tmux/.tmux.conf:
  file.managed:
    - name: /root/.tmux.conf
    - source: salt://avalon/tmux/template/.tmux.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja