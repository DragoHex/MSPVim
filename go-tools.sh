#!/bin/bash

# Function to install a Go tool
install_tool() {
    echo "Installing $1..."
    go install "$1" || { echo "Error installing $1"; exit 1; }
}

# List of Go tools to install
tools=(
    "golang.org/x/tools/gopls@latest"
    "github.com/cweill/gotests/gotests@latest"
    "github.com/fatih/gomodifytags@latest"
    "golang.org/x/tools/cmd/callgraph@latest"
    "mvdan.cc/gofumpt@latest"
    "github.com/abenz1267/gomvp@latest"
    "github.com/cweill/gotests/gotests@latest"
    "github.com/josharian/impl@latest"
    "github.com/go-delve/delve/cmd/dlv@latest"
    "golang.org/x/tools/cmd/goimports@latest"
    "golang.org/x/tools/cmd/gonew@latest"
    "gotest.tools/gotestsum@latest"
    "github.com/ChimeraCoder/gojson/gojson@latest"
    "github.com/davidrjenni/reftools/cmd/fillstruct@latest"
    "github.com/golangci/golangci-lint/cmd/golangci-lint@latest"
    "github.com/haya14busa/goplay/cmd/goplay@latest"
    "golang.org/x/vuln/cmd/govulncheck@latest"
    "github.com/kyoh86/richgo@latest"
    "github.com/onsi/ginkgo/ginkgo@latest"
    "github.com/segmentio/golines@latest"
    "golang.org/x/tools/gopls@latest"
    "golang.org/x/tools/cmd/guru@latest"
    "golang.org/x/tools/go/analysis/passes/shadow/cmd/shadow@latest"
    "github.com/abice/go-enum@latest"
    "github.com/fatih/gomodifytags@latest"
    "golang.org/x/tools/cmd/gorename@latest"
    "github.com/koron/iferr@latest"
    "honnef.co/go/tools/cmd/staticcheck@latest"
)

# Install each tool
for tool in "${tools[@]}"; do
    install_tool "$tool"
done

echo "All tools installed successfully!"
