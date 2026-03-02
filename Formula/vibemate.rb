class Vibemate < Formula
  desc "Local CLI companion for coding agents"
  homepage "https://github.com/zhenlohuang/vibemate"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.3/vibemate-0.2.3-darwin-aarch64.tar.gz"
      sha256 "352b676a9efd818d43905aed79d320f17eb4fbd8b0b0220e793387b891568c85"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.3/vibemate-0.2.3-darwin-x86_64.tar.gz"
      sha256 "8b36a328a5e9d405829b737112eca542033d932bfde98326aa0581468a47742d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.3/vibemate-0.2.3-linux-aarch64.tar.gz"
      sha256 "74d064add67462f79a90ba8227f512ba6afd347529374a7625f346039ab95987"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.3/vibemate-0.2.3-linux-x86_64.tar.gz"
      sha256 "6be7bc8388a5c3b7fb7b601ef4d582829356b98e5546a2ab39cebce882e0977d"
    end
  end

  def install
    bin.install "vibemate"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/vibemate --help")
  end
end
