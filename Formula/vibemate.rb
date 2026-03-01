class Vibemate < Formula
  desc "VibeMate is a local CLI companion for coding agents."
  homepage "https://github.com/zhenlohuang/vibemate"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.1.0/vibemate-0.1.0-darwin-aarch64.tar.gz"
      sha256 "40a7e8f4bfbcbcaa677c93e848d8802c38a0d206f07e7a7a6aff10ca46a13b76"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.1.0/vibemate-0.1.0-darwin-x86_64.tar.gz"
      sha256 "2542db6ffb37365dfe9bf917e62b3374134f8c0dad0bf5d027a3218e1eaa44a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.1.0/vibemate-0.1.0-linux-aarch64.tar.gz"
      sha256 "f9a900275360f563dbacb7d4b0367b5649a9dcef1361c276b85421f81440572c"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.1.0/vibemate-0.1.0-linux-x86_64.tar.gz"
      sha256 "c7523a4d1071b2b8220276bfe450507ccd59e14e151abb638f4d058dc550f0ac"
    end
  end

  def install
    bin.install "vibemate"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/vibemate --help")
  end
end

