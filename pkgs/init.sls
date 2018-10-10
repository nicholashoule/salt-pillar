pkgs:
  {% if grains['os_family'] == 'RedHat' %}
  # Not implemented
  {% elif grains['os_family'] == 'Debian' %}
    
  {% if grains['os'] == 'Raspbian' %}
  # Common packages for Raspbian
  wget: wget
  curl: curl
  tmux: tmux
  screen: screen
  vim: vim
  nano: nano
  git: git-core
  htop: htop
  dos2unix: dos2unix
  tree: tree
  ssh: ssh
  build-essential: build-essential
  net-tools: net-tools
  dnsutils: dnsutils
  haveged: haveged
  {% endif %}
    
  {% if grains['os'] == 'Ubuntu' %}
  # common packages for Ubuntu
  wget: wget
  curl: curl
  tmux: tmux
  screen: screen
  vim: vim
  nano: nano
  git: git-core
  htop: htop
  dos2unix: dos2unix
  tree: tree
  ssh: ssh
  build-essential: build-essential
  net-tools: net-tools
  dnsutils: dnsutils
  haveged: haveged
  {% endif %}
    
  {% elif grains['os'] == 'Arch' %}
  # Not implemented
  {% endif %}
