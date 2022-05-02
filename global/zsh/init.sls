# Installation du pkg tmux
/avalon/zsh:
  pkg.installed:
    - name: zsh


# Passer en zsh par défaut
/usr/bin/chsh
  cmd.wait:
    - watch:
      - pkg: zsh
    - name: chsh -s /usr/bin/zsh