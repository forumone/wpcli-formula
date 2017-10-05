/opt/wp-cli.phar:
  file.managed:
    - source: https://github.com/wp-cli/wp-cli/releases/download/v1.3.0/wp-cli-1.3.0.phar
    - source_hash: sha512=710d41171358fbaff5962e23d1acfda1327e03cbc59bb7c5d8a7ff87fee009ac678bc8f8e690bc743f40bc54ae8907f1f16e4e5abd166c05dc7769cd15b00084
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
