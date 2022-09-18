class Cli < Formula
    desc "Subsquid - CLI"
    homepage "https://docs.subsquid.io/deploy-squid/squid-cli/"
    license "GNU"
    version "0.7.0"

    if OS.mac?
        url "https://github.com/subsquid/subsquid-cli/releases/download/v0.7.0/subsquid-cli-0.7.0-macos-x64.tar.gz"
        sha256 "73c9aea048efb6331b10a13a1d59cc9f3e9196a5a300a3c74ca59c5d0dac14d7"
    end
    if OS.linux?
        url "https://github.com/subsquid/subsquid-cli/releases/download/v0.7.0/subsquid-cli-0.7.0-linux-x64.tar.gz"
        sha256 "02cf4dc6ea939998a6349ba5ae8dc7de9a85628fa1b28189325e7a3a63c113fd"
    end
    
    def install
        bin.install "sqd"
    end
end