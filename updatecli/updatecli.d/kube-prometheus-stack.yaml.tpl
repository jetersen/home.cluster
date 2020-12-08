source:
  kind: helmChart
  spec:
    url: https://prometheus-community.github.io/helm-charts
    name: kube-prometheus-stack

targets:
  chartVersion:
    name: "kube-prometheus-stack Helm Chart"
    kind: yaml
    spec:
      file: "helmfile.d/kube-prometheus-stack.yaml"
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
