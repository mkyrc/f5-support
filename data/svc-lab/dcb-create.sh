#!/usr/bin/bash

##### SVC: DMZ dmz-cp
#
## How to run
# time . ../data/100-dmz/svc-dmz-cp/dcb-create.sh
#
#####

config="../data/100-dmz/svc-dmz-cp/dcb-dmz-cp.cfg.yaml"
fwconfig="../data/100-dmz/svc-dmz-cp/dcb-dmz-cp-fw.cfg.yaml"

ansible-playbook playbooks/f5-network.pb.yaml -e @$config -t ip
# ansible-playbook playbooks/f5vs.pb.yaml -e @$config -t "vs, pool, monitor"
# ansible-playbook playbooks/f5fw.pb.yaml -e @$fwconfig
ansible-playbook playbooks/f5-save-config.pb.yaml -e @$config