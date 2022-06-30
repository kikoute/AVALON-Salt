base:
  '*':
    - global/ssh
    - global/job
    - global/motd
  'os_family:Debian':
    - match: grain
    - debian/dnsutils
    - debian/git
    - debian/source-list
    - debian/tmux
    - debian/zsh