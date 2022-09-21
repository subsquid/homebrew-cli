#!/bin/bash

cat > sqd.rb <<EOL
class Sqd < Formula 
    desc "Subsquid - CLI"
    homepage "https://docs.subsquid.io/deploy-squid/squid-cli/"
    license "GNU"
    version "${npm_package_version}"

    if OS.mac?
        url "https://github.com/subsquid/subsquid-cli/releases/download/v${npm_package_version}/subsquid-cli-${npm_package_version}-macos-x64.tar.gz"
        sha256 "${pkg_macos_shasum}"
    end
    if OS.linux?
        url "https://github.com/subsquid/subsquid-cli/releases/download/v${npm_package_version}/subsquid-cli-${npm_package_version}-linux-x64.tar.gz"
        sha256 "${pkg_linux_shasum}"
    end
    
    def install
        bin.install "sqd"
    end
end
EOL
