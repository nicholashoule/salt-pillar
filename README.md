# Saltstack: salt-pillar

Example SaltStack pillar configurations

## SaltStack - Master
/etc/salt/master

```
##########################################
# Salt Pillars allow for the building of global data that can be made selectively
# available to different minions based on minion grain filtering. The Salt
# Pillar is laid out in the same fashion as the file server, with environments,
# a top file and sls files. However, pillar data does not need to be in the
# highstate format, and is generally just key/value pairs.
#pillar_roots:
#  base:
#    - /srv/salt/pillar

ext_pillar:
   - git:
     # HTTPS authentication
     - master https://github.com/[namespace]/salt-pillar.git:
       - user: [user]
       - password: [password]
```


## SALT PILLAR EXPLAINED

Salt pillar is a system that lets you define secure data that are ‘assigned’ to one or more minions using targets. Salt pillar data stores values such as ports, file paths, configuration parameters, and passwords.

*Link:* https://docs.saltstack.com/en/getstarted/config/pillar.html
