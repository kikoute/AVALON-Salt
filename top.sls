base:
  '*':
    - global/ssh
    - global/job
    - global/motd
  'os_family:Debian':
    - match: grain
    - debian/network
    - debian/tmux
    - debian/source-list