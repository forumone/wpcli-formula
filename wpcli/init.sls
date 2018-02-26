/opt/wp-cli.phar:
  cmd.run:
    - name: cd /opt && curl https://github.com/wp-cli/wp-cli/releases/download/v1.3.0/wp-cli-1.3.0.phar > wp-cli.phar
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
