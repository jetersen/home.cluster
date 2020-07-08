# Kubernetes cluster at home

This is my cluster I run at home.
Hopefully you can draw inspiration on my setup 😅

To spin up the cluster simple run:

```bash
rke up
```

## Tools used

For helm charts I use a couple of tools to manage state and secrets.
- [roboll/helmfile](https://github.com/roboll/helmfile) to describe what I have running in my cluster
- [zendesk/helm-secrets](https://github.com/zendesk/helm-secrets) for secrets which uses [mozilla/sops](https://github.com/mozilla/sops) behind the scene.

## TODO

- Manage more cluster state
- Figure out how to cloud init the ubuntu machine, so the machine is truely replacable!

## Credit

This is greatly inspired by https://github.com/jenkins-infra/charts
