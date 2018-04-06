#!stateconf yaml . jinja

{% for file in ['libjpeg.so','libfreetype.so','libz.so'] %}
.place_so_file{{ file }}:
  file.symlink:
    - name: /usr/lib/{{ file }}
    - target: /usr/lib/x86_64-linux-gnu/{{ file }}
{% endfor %}
