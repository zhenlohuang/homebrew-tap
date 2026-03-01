class Vibemate < Formula
  desc "Local CLI companion for coding agents"
  homepage "https://github.com/zhenlohuang/vibemate"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.0/vibemate-0.2.0-darwin-aarch64.tar.gz"
      sha256 "7c001422425622e79bc73ae417d85bd0b5a60be1f22f93b10b63031182f0bd60"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.0/vibemate-0.2.0-darwin-x86_64.tar.gz"
      sha256 "14864b53339b9100d06d94b9deb27cdc8d91de8219504a2098a800747c02f2e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.0/vibemate-0.2.0-linux-aarch64.tar.gz"
      sha256 "f7cde9cf8de1acff99dc58d3ec3f0dfbf326ddc3250cdc88a49139f5e7fc1991"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.0/vibemate-0.2.0-linux-x86_64.tar.gz"
      sha256 "c7ec003e3167b1c176b966983f53e7cc5b020e46fe263ba3f84d39377a77a7fb"
    end
  end

  def install
    bin.install "vibemate"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/vibemate --help")
  end
end
