source:
  kind: helmChart
  spec:
    url: https://charts.bitnami.com/bitnami
    name: external-dns

targets:
  chartVersion:
    name: "external-dns Helm Chart"
    kind: yaml
    spec:
      file: "helmfile.d/external-dns.yaml"
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
