source:
  kind: githubRelease
  spec:
    owner: "pi-hole"
    repository: "pi-hole"
    token: "{{ requiredEnv .github.token }}"
    username: "{{ .github.username }}"
    version: "latest"

conditions:
  docker:
    name: "Docker Image Published on Registry"
    kind: dockerImage
    spec:
      image: "pihole/pihole"

targets:
  chartVersion:
    name: "pihole container image"
    kind: yaml
    spec:
      file: "config/pihole.yaml"
      key: "image.tag"
    scm:
      github:
        user: "{{ .github.user }}"
        email: "{{ .github.email }}"
        owner: "{{ .github.owner }}"
        repository: "{{ .github.repository }}"
        token: "{{ requiredEnv .github.token }}"
        username: "{{ .github.username }}"
        branch: "{{ .github.branch }}"
