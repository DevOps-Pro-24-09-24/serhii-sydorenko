# serhii sydorenko homeworks

## HM 1: Add pre-commit check

* added Black code formater
* added pylint check with config in .pylintrc
* added regex pattern check for commit-message to be 'DJ-XXXXXX'

### install guide

install project dependency:

```
pip install -r requirements.txt
```

install pre-commit:

```
pre-commit install
```

make the bash file executable:

```commandline
chmod +x ./scripts/check-commit-message.sh
```

install hooks:

```
pre-commit install --hook-type commit-msg
```

run test command to verify the setup:

```
pre-commit run --all-files
```
