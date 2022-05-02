base:
  '*':
    - avalon/ssh
    - avalon/job
    - avalon/motd
  'os:Debian':
    - match: grain
    - avalon/network
    - avalon/tmux