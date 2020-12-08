source:
  kind: helmChart
  spec:
    url: https://mojo2600.github.io/pihole-kubernetes/
    name: pihole

targets:
  chartVersion:
    name: "pihole Helm Chart"
    kind: yaml
    spec:
      file: "helmfile.d/pihole.yaml"
      key: "releases[0].version"
    scm:
      github:
        user: "{{ .github.user }}"
        email: "{{ .github.email }}"
        owner: "{{ .github.owner }}"
        repository: "{{ .github.repository }}"
        token: "{{ requiredEnv .github.token }}"
        username: "{{ .github.username }}"
        branch: "{{ .github.branch }}"
