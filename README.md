# drone-capistrano
It's simple images for capistrano deployment in drone CI (or any CI).

## Usage

```yaml
---
kind: pipeline
name: production

clone:
  depth: 1

steps:
- name: deployment
  image: 7a6163/drone-capistrano
  environment:
    SSH_KEY:
      from_secret: SSH_KEY
  commands:
  - eval "$(ssh-agent -s)"
  - bash -c 'ssh-add <(echo "$SSH_KEY")'
  - cap production deploy
```
