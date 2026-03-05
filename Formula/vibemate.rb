class Vibemate < Formula
  desc "Local CLI companion for coding agents"
  homepage "https://github.com/zhenlohuang/vibemate"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.3.0/vibemate-0.3.0-darwin-aarch64.tar.gz"
      sha256 "ec6646068a33d8d54cf85621640326256e8fdc68cdcf77d53c04e951f8f6c4a0"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.3.0/vibemate-0.3.0-darwin-x86_64.tar.gz"
      sha256 "3c350b9c628014ddd2a04dbd8f06a1da4116939ab614b75d61b30768a70ca703"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.3.0/vibemate-0.3.0-linux-aarch64.tar.gz"
      sha256 "808d3256d9724ccaeac23ec7fd9a8489eb289a5f59706409c8ea982752a3a298"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.3.0/vibemate-0.3.0-linux-x86_64.tar.gz"
      sha256 "35be5080994dbfd542bfcccdd56827545d17ca069315a576a6c2fa220f05c112"
    end
  end

  def install
    bin.install "vibemate"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/vibemate --help")
  end
end
