# Todo App

## Prerequisites

A Virtual Machine with a public ipv4

### Setup

1. Set your virtual machine user and IP in `inventory.yaml`
2. Set up your docker token in `playbook.yaml`
3. Deploy the stack using ansible

```bash
ansible-playbook -i inventory.yaml playbook.yaml
```

### Update the app

```bash
docker compose build
```

```bash
docker compose push
```