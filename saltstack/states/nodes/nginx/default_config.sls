#!stateconf yaml . jinja

.nging_conf:
  file.managed:
    - name: /home/{{ grains['deescalated_user'] }}/{{ grains['project'] }}/nginx.conf
    - require:
      - sls: {{ grains['dvcs'] }}.repo
    - template: jinja
    - source: /home/{{ grains['deescalated_user'] }}/{{ grains['project'] }}/nginx.conf.template
    - user: {{ grains['deescalated_user'] }}
    - group: {{ grains['deescalated_user'] }}

.nginx_symlink:
  file.symlink:
    - name: /etc/nginx/sites-enabled/nginx.conf
    - target: /home/{{ grains['deescalated_user'] }}/{{ grains['project'] }}/nginx.conf

remove_nginx_sites_enabled_default:
  file.absent:
    - name: /etc/nginx/sites-enabled/default

.nginx_restart:
  module.run:
    - name: service.restart
    - m_name: nginx
