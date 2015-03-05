# Grab the repo, default to 0.18 release
https://github.com/wp-cli/wp-cli.git:
  git.latest:
    - rev: {{ salt['pillar.get']('wpcli:branch', 'tag/v0.18.0') }}
    - target: /opt/wpcli

#/usr/local/bin/wp-cli:
#  file.symlink:
#    - target: /opt/wp-cli.phar
#    - require:
#      - file: /opt/wp-cli.phar
#
#/usr/local/bin/wp:
#  file.symlink:
#    - target: /opt/wp-cli.phar
#    - require:
#      - file: /opt/wp-cli.phar
