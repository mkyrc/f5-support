This is only part of whole custom Ansible environment:
* creation/editing/deletion Rule List(rl_<name>) with Rules
* creation/editing/deletion Policy (acl_<name>)
* applying Policy to Route Domain

Which kind of playbooks are missing (it's necessary create manually):
* networking part (self ip(s), routing/default route)
* route domain (name: 'rd-<id>')
* LTM part (virtual server for service (including pool), virtual server (0.0.0.0/0) for 'forwarding/FastL4')

How to run:
```
cd <root-folder>
time . data/svc-lab01/dca-create.sh
```