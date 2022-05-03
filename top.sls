base:
  '*':
    - global/ssh
    - global/job
    - global/motd
    - debian/tmux
  'os_family:Debian':
    - match: grain
    - debian/network
    - debian/source-list