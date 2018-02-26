/opt/wp-cli.phar:
  cmd.run:
    - name: wget https://github.com/wp-cli/wp-cli/releases/download/v1.3.0/wp-cli-1.3.0.phar -O /opt/wp-cli.phar

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
