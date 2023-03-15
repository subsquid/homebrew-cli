class SqdATBeta < Formula 
    desc "Subsquid - CLI"
    homepage "https://docs.subsquid.io/deploy-squid/squid-cli/"
    license "GNU"
    version "2.2.0-beta.6"
    if OS.mac?
        url "https://github.com/subsquid/subsquid-cli/releases/download/v2.2.0-beta.6/subsquid-cli-2.2.0-beta.6-macos-x64.tar.gz"
        sha256 ""
    end
    if OS.linux?
        url "https://github.com/subsquid/subsquid-cli/releases/download/v2.2.0-beta.6/subsquid-cli-2.2.0-beta.6-linux-x64.tar.gz"
        sha256 ""
    end

    def install
        bin.install "sqd"
    end
end
