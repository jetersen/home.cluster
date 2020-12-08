source:
  kind: helmChart
  spec:
    url: https://charts.jetstack.io
    name: cert-manager

targets:
  chartVersion:
    name: "cert-manager Helm Chart"
    kind: yaml
    spec:
      file: "helmfile.d/cert-manager.yaml"
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
