users:
  {% if grains['os_family'] == 'RedHat' %}
  # Not implemented
  {% elif grains['os_family'] == 'Debian' %}
    
  {% if grains['os'] == 'Raspbian' %}
  # Users for Raspbian
  root:
    - fullname: root
    - password: '"!"'
    - shell: /bin/bash
    
  the_one:
    fullname: The one
    password: '"!$6$XhaDEVaW$LPF2t4JAQWOeM2vTHgxN19TewiaS9Gd0N6eZBNeLuYIcAQKVkp8VlyDotBzNsdrGFT2gQYx35yaziSjTQM4tW/"'
    shell: /bin/bash
    ssh-keys:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMg+d4pq1a8JJxfiPIfAprUdDHiL8kbndj+Yzjj1m9U8 181gaming@gmail.com

  {% endif %}
    
  {% if grains['os'] == 'Ubuntu' %}
  # Users for Ubuntu
  root:
    fullname: root
    password: '"!"'
    shell: /bin/bash
    
  the_one:
    fullname: The one
    password: '"!$6$XhaDEVaW$LPF2t4JAQWOeM2vTHgxN19TewiaS9Gd0N6eZBNeLuYIcAQKVkp8VlyDotBzNsdrGFT2gQYx35yaziSjTQM4tW/"'
    shell: /bin/bash
    ssh-keys:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMg+d4pq1a8JJxfiPIfAprUdDHiL8kbndj+Yzjj1m9U8 181gaming@gmail.com
  {% endif %}
    
  {% elif grains['os'] == 'Arch' %}
  # Not implemented
  {% endif %}
