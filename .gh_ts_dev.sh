
alias ts_tunnel="ssh -p 2222 -o NoHostAuthenticationForLocalhost=yes -R 8888:localhost:8888 -R 9000:localhost:9000 root@localhost"

export ENTERPRISE_CODE_SCANNING_ENABLED=true # Only needed in Enterprise mode, but there's no disadvantage to setting it in DotCom mode too.
export TURBOSCAN_S3_ENDPOINT="http://localhost:9000"
export TURBOSCAN_S3_BUCKET="turboscan-dev"
export ENTERPRISE_ENABLE_AQUEDUCT=true # For Committer Based Billing jobs (only needed in Enterprise mode)
export AWS_ACCESS_KEY_ID_GITHUB_PRODUCTION=minio
export AWS_SECRET_ACCESS_KEY_ID_GITHUB_PRODUCTION=miniostorage

# Load secrets
[ -f "$HOME/.secrets" ] && source "$HOME/.secrets"
