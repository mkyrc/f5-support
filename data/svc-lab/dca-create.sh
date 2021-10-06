#!/usr/bin/bash

##### SVC: dmz-cp
#
## How to run
# cd <root-folder>
# time . data/svc-lab/dca-create.sh
#
#####

config="data/svc-lab/dca-lab.cfg.yaml"
fwconfig="data/svc-lab/dca-lab-fw.cfg.yaml"

# ansible-playbook playbooks/f5-network.pb.yaml -e @$config -t ip
# ansible-playbook playbooks/f5vs.pb.yaml -e @$config -t "vs, pool, monitor"
ansible-playbook playbooks/f5fw.pb.yaml -e @$fwconfig
ansible-playbook playbooks/f5-save-config.pb.yaml -e @$config