creat_db_for_wordpress:
  mysql_database.present:
    - name: wordpress

download_wordpress:
  cmd.run:
    - name: "wget http://wordpress.org/latest.tar.gz"
    - cwd: /home/{{ grains['deescalated_user'] }}
