base:
  '*':
    - global/ssh
    - global/job
    - global/motd
  'os:Debian':
    - match: grain
    - debian/network
    - debian/tmux
    - debian/source-list