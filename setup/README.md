# Ansible Setup

This supports only Ubuntu, atm.

```bash
ansible-playbook bootstrap.yml -b --u user -i inventory.yml --ask-become-pass
```

Once the bootstrap playbook is ran, you should be able to run `rke up`
