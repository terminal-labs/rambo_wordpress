#!stateconf yaml . jinja

.place_master_bitbucket_deployment_key:
  file.managed:
    - name: /root/.ssh/master_bitbucket_deployment_key
    - source: salt://ssh_keys/master_bitbucket_deployment_key
    - mode: 400

.place_master_artifacts_server_deployment_key:
  file.managed:
    - name: /root/.ssh/master_artifacts_server_deployment_key
    - source: salt://ssh_keys/master_artifacts_server_deployment_key
    - mode: 400

.place_config:
  file.managed:
    - name: /root/.ssh/config
    - source: salt://deploy_keys/config
    - mode: 400
