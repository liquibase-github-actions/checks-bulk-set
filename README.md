# Liquibase Checks Bulk Set Action
Official GitHub Action to run Liquibase Checks Bulk Set in your GitHub Action Workflow. For more information on how checks bulk set works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Checks Bulk Set
[PRO]
Set the properties of all qualifying checks with one command
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/checks-bulk-set@v4.25.1
  with:
    # Allows automatic backup and updating of liquibase.checks.conf file when new quality checks are available, or for file format changes. Options: [on|off]
    # string
    # Optional
    autoUpdate: ""

    # Relative or fully qualified path to a configuration file for checks execution
    # string
    # Optional
    checksSettingsFile: ""

    # Disable all qualifying checks in the checks settings file
    # bool
    # Optional
    disable: ""

    # Enable all qualifying checks in the checks settings file
    # bool
    # Optional
    enable: ""

    # Do not ask for confirmation when running this command
    # bool
    # Optional
    force: ""

    # Set the severity of all checks to the value specified
    # string
    # Optional
    severity: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase checks bulk set action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/checks-bulk-set@v4.25.1
    with:
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
