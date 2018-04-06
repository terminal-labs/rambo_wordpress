#!stateconf yaml . jinja

.ngingx_conf:
  file.managed:
    - name: /etc/nginx/sites-enabled/nginx.conf
    - source: salt:///nodes/nginx/wordpress_nginx.conf.template

.remove_default_nginx_config:
  file.absent:
    - name: /etc/nginx/sites-enabled/default

.nginx_restart:
  module.run:
    - name: service.restart
    - m_name: nginx
