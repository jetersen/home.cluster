source:
  kind: helmChart
  spec:
    url: https://charts.helm.sh/stable
    name: dex

targets:
  chartVersion:
    name: "dex Helm Chart"
    kind: yaml
    spec:
      file: "helmfile.d/dex.yaml"
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
