class Sqd < Formula
    desc "Subsquid - CLI"
    homepage "https://docs.subsquid.io/deploy-squid/squid-cli/"
    license "GNU"
    version "0.7.1"

    if OS.mac?
        url "https://github.com/subsquid/subsquid-cli/releases/download/v0.7.1/subsquid-cli-0.7.1-macos-x64.tar.gz"
        sha256 "04fac50286b0a25c5c4b3dd0d500c8ebb378525126582066341ce81a130ade0c"
    end
    if OS.linux?
        url "https://github.com/subsquid/subsquid-cli/releases/download/v0.7.1/subsquid-cli-0.7.1-linux-x64.tar.gz"
        sha256 "3b44a054ca486e18cda3d0385c2531374434723a19f03600050c573002a2efb1"
    end
    
    def install
        bin.install "sqd"
    end
end
