#!stateconf yaml . jinja

.install_mysql:
  pkg.installed:
    - pkgs:
      - mysql-server


