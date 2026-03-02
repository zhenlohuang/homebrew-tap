class Vibemate < Formula
  desc "Local CLI companion for coding agents"
  homepage "https://github.com/zhenlohuang/vibemate"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.2/vibemate-0.2.2-darwin-aarch64.tar.gz"
      sha256 "c58c4b6a4d1de62222347310b24430d77a011bb06107f8a98accd3a31cba7807"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.2/vibemate-0.2.2-darwin-x86_64.tar.gz"
      sha256 "bc1c56355cc6546e86a2f56f39780c02ca67c01f619b34facaf639c53addfa6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.2/vibemate-0.2.2-linux-aarch64.tar.gz"
      sha256 "e96532224023b504e0893a0aa5156c5cb325630d83fdc6895d77289d5f204ae1"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.2.2/vibemate-0.2.2-linux-x86_64.tar.gz"
      sha256 "d6577b754c6c967638e943e9ba5c5cbdfce8605e35561c61f721f63450bef25d"
    end
  end

  def install
    bin.install "vibemate"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/vibemate --help")
  end
end
