class Engram < Formula
  desc "AI agent memory system with CLI and MCP server"
  homepage "https://github.com/Gasmanc/Engram"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Gasmanc/Engram/releases/download/v0.1.2/engram-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "b12bb65810627a2e2a7f215750f28a38fa03b300bdb573ef75993385a204ad20"
    else
      url "https://github.com/Gasmanc/Engram/releases/download/v0.1.2/engram-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "56802ce0fad5523bc1e211965d50ff019a23d93ec391d86e0aebd7348e3297b6"
    end
  end

  on_linux do
    url "https://github.com/Gasmanc/Engram/releases/download/v0.1.2/engram-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5a29a5bb08702414e198c97f8f3966788442ecd4c77b70f7fa6d7733a744d4c0"
  end

  def install
    bin.install "engram"
    pkgshare.install "README.md", "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/engram --version")
  end
end
