# Installation du pkg tmux
/debian/zsh:
  pkg.installed:
    - name: zsh


# Passer en zsh par défaut
/usr/bin/chsh
  cmd.wait:
    - watch:
      - pkg: zsh
    - name: chsh -s /usr/bin/zsh