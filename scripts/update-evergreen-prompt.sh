# v1.0.1
latest_version="$(gh release list --repo https://github.com/chatton/evergreen-prompt | grep Latest  | awk '{ print $3 }')"

# 1.0.1
latest_version="${latest_version:1}"

download_url="https://github.com/chatton/evergreen-prompt/releases/download/v${latest_version}/evergreen-prompt-${latest_version}.tar.gz"

curl "https://github.com/chatton/evergreen-prompt/releases/download/v${latest_version}/evergreen-prompt-${latest_version}.tar.gz" -Lo "evergreen-prompt-${latest_version}.tar.gz"

sha_256="$(sha256sum evergreen-prompt-${latest_version}.tar.gz | awk '{ print $1 }')"

go run scripts/update_evergreen_prompt_rb.go ${latest_version} ${download_url} ${sha_256} Formula/evergreen-prompt.rb > file.rb && mv file.rb Formula/evergreen-prompt.rb
