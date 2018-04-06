include:
  - nodes.clean
  - nodes.basebox
  - nodes.basebox.symlink
  - nodes.users
  # - nodes.hg
  # - nodes.hg.ssh
  # - nodes.hg.repo
  # - nodes.git
  # - nodes.git.ssh
  # - nodes.git.repo
  - nodes.nginx                   {# requires {{ grains['dvcs'] }}.repo #}
  #- nodes.nginx.default_config
  - nodes.nginx.wordpress_config
  - nodes.php
  - nodes.mysql
  - nodes.wordpress
