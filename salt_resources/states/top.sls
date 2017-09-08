base:
  'roles:project':
    - match: grain
    - clean
    - basebox
    - basebox.symlink
    - users
    # - network
    # - network.cluster
    # - hg
    # - hg.ssh
    # - hg.repo
    # - git
    # - git.ssh
    # - git.repo
    # - database                {# required_in postgres #}
    # - artifacts               {# requires {{ grains['dvcs'] }}.repo, required_in postgres #}
    - nginx                   {# requires {{ grains['dvcs'] }}.repo #}
    #- nginx.default_config
    - nginx.wordpress_config
    - php
    # - python
    # - venv                    {# requires {{ grains['dvcs'] }}.repo, python #}
    # - venv.pip_requirements   {# requires venv #}
    # - conda                   {# requires users #}
    # - conda.anaconda          {# requires conda #}
    # - conda.pip_requirements  {# requires conda #}
    - mysql
    # - postgresql              {# requires {{ grains['dvcs'] }}.repo #}
    # - conf
    - wordpress
    # - django
    # - supervisord
    # - hadoop.ambari
  'roles:prod':
    - match: grain
    - deploy_keys
    - supervisord.start         {# requires supervisor #}
  'roles:dev':
    - match: grain
    - users.aliases             {# requires users #}
