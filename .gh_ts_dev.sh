
alias ts_tunnel="ssh -p 2222 -o NoHostAuthenticationForLocalhost=yes -R 8888:localhost:8888 -R 9000:localhost:9000 root@localhost"

alias enable_alert_issue_links="./bin/toggle-feature-flag enable task_list_beta;./bin/toggle-feature-flag enable extract_checklists;./bin/toggle-feature-flag enable issues_alerts_integration"

alias enable_code_scanning_in_db="./bin/rake --trace "enterprise:code_scanning:create[]";./bin/toggle-feature-flag enable advanced_security_private_beta;enable_issue_links"

alias seed_with_turbotest="cd ~/Repos/github/turbotest;poetry run turbotest run --url http://github.localhost --organization github --cleanup skip main_flow/first_analysis/first_alert;echo 'remember to update development PAT AND enable GHAS for github org repos with new codespaces instances'"

alias export_oauth_token="unset GITHUB_TOKEN;export GITHUB_TOKEN="$(gh config get --host github.com oauth_token)""

export ENTERPRISE_ADVANCED_SECURITY_ENABLED=true # Only needed in Enterprise mode, but there's no disadvantage to setting it in DotCom mode too.
export ENTERPRISE_CODE_SCANNING_ENABLED=true # Only needed in Enterprise mode, but there's no disadvantage to setting it in DotCom mode too.
export TURBOSCAN_S3_ENDPOINT="http://localhost:9000"
export TURBOSCAN_S3_BUCKET="turboscan-dev"
export ENTERPRISE_ENABLE_AQUEDUCT=true # For Committer Based Billing jobs (only needed in Enterprise mode)
export AWS_ACCESS_KEY_ID_GITHUB_PRODUCTION=minio
export AWS_SECRET_ACCESS_KEY_ID_GITHUB_PRODUCTION=miniostorage

# Load secrets
[ -f "$HOME/.secrets" ] && source "$HOME/.secrets"
