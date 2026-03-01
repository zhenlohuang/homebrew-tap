class Vibemate < Formula
  desc "Local CLI companion for coding agents"
  homepage "https://github.com/zhenlohuang/vibemate"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.1.1/vibemate-0.1.1-darwin-aarch64.tar.gz"
      sha256 "c22a23008324a0ad37e505e012a4d43aae9099f998f85743bb4ca1432cad1092"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.1.1/vibemate-0.1.1-darwin-x86_64.tar.gz"
      sha256 "5b8ade6e665a6b5e39b0ce51c42444043708b205e6d0c19a72f5b944161d358e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.1.1/vibemate-0.1.1-linux-aarch64.tar.gz"
      sha256 "9becdc61a5d1110326e6e26eae0028d7b68912063e5e848cd9ba462a1f9327a7"
    else
      url "https://github.com/zhenlohuang/vibemate/releases/download/v0.1.1/vibemate-0.1.1-linux-x86_64.tar.gz"
      sha256 "98a6df6d03fda24928dc261808e8f6b08a5113dd1af51af5de384420e9c0690d"
    end
  end

  def install
    bin.install "vibemate"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/vibemate --help")
  end
end
