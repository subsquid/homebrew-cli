#!/bin/bash

function gen()
{
    cat << EOF
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
EOF
}

cat > sqd.rb <<EOL
class Sqd < Formula 
$(gen)
end
EOL

cat > sqd@$npm_package_version.rb <<EOL
class SqdAT${npm_package_version//\./} < Formula 
$(gen)
end
EOL

cat > sqd@$version_tag.rb <<EOL
class SqdAT$version_tag < Formula 
$(gen)
end
EOL