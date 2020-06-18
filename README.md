# Kubernetes cluster at home

This is my cluster I run at home.
Hopefully you can draw inspiration on my setup 😅

To spin up the cluster simple run:
```bash
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
rke up --ssh-agent-auth
```

## TODO

- Manage more cluster state
- Figure out how to cloud init the ubuntu machine, so the machine is truely replacable!
