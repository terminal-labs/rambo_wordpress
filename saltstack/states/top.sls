base:
  'roles:project':
    - match: grain
    - clean
    - basebox
    - basebox.symlink
    - users
    # - hg
    # - hg.ssh
    # - hg.repo
    # - git
    # - git.ssh
    # - git.repo
    - nginx                   {# requires {{ grains['dvcs'] }}.repo #}
    #- nginx.default_config
    - nginx.wordpress_config
    - php
    - mysql
    - wordpress
  'roles:prod':
    - match: grain
    - deploy_keys
    - supervisord.start         {# requires supervisor #}
  'roles:dev':
    - match: grain
    - users.aliases             {# requires users #}
