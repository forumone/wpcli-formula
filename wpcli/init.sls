/opt/wp-cli.phar:
  file.managed:
    - source: https://github.com/wp-cli/wp-cli/releases/download/v1.5.0/wp-cli-1.5.0.phar
    - source_hash: https://github.com/wp-cli/wp-cli/releases/download/v1.5.0/wp-cli-1.5.0.phar.sha512
    - user: root
    - group: root
    - mode: 0755

/usr/local/bin/wp-cli:
  file.symlink:
    - target: /opt/wp-cli.phar
    - require:
      - file: /opt/wp-cli.phar

/usr/local/bin/wp:
  file.symlink:
    - target: /opt/wp-cli.phar
    - require:
      - file: /opt/wp-cli.phar
