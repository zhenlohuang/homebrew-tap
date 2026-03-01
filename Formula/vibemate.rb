class Vibemate < Formula
  desc "Local CLI companion for coding agents"
  homepage "https://github.com/zhenlohuang/vibemate"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.1/vibemate-0.2.1-darwin-aarch64.tar.gz"
      sha256 "28f9a8c79c40ed3c4f6c60ea4fb7fd18899c3ca07a7cc7c6b3615b6d46215749"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.1/vibemate-0.2.1-darwin-x86_64.tar.gz"
      sha256 "e9d907a210e54ea3ff554fdd42288f7bf29b04af6cb9036f57ba7050e9b763d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.1/vibemate-0.2.1-linux-aarch64.tar.gz"
      sha256 "bb243922f0ed61fb57651326b570440a2e47b23f45b63547daa7f2546eff7fd7"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.1/vibemate-0.2.1-linux-x86_64.tar.gz"
      sha256 "ea1fe1d8bef20f146bc51ff2dfc2843b53f194e84e37fd7d60093aa43c0f5eb5"
    end
  end

  def install
    bin.install "vibemate"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/vibemate --help")
  end
end
