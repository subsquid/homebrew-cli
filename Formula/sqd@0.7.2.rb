class SqdAT072 < Formula
    desc "Subsquid - CLI"
    homepage "https://docs.subsquid.io/deploy-squid/squid-cli/"
    license "GNU"
    version "0.7.2"

    if OS.mac?
        url "https://github.com/subsquid/subsquid-cli/releases/download/v0.7.2/subsquid-cli-0.7.2-macos-x64.tar.gz"
        sha256 "22a03b698cdfc3732ed733ef2d420401ab61fee274d344e06776e4e194086ddb"
    end
    if OS.linux?
        url "https://github.com/subsquid/subsquid-cli/releases/download/v0.7.2/subsquid-cli-0.7.2-linux-x64.tar.gz"
        sha256 "598121cd0526c27b937f7985aaaa885c2ac8fb4397050d59040719ee6ecad100"
    end
    
    def install
        bin.install "sqd"
    end
end
