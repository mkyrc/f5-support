This is only part of whole custom Ansible environment:
* creation/editing/deletion Rule List(rl_<name>) with Rules
* creation/editing/deletion Policy (acl_<name>)
* applying Policy to Route Domain

Which kind of playbooks are missing:
* networking part
* LTM part

How to run:
```
cd <root-folder>
time . data/svc-lab01/dca-create.sh
```