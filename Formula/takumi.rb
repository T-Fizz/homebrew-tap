class Takumi < Formula
  desc "AI-aware, language-agnostic workspace builder"
  homepage "https://github.com/T-Fizz/takumi"
  version "1.0.0"
  license "AGPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/T-Fizz/takumi/releases/download/v1.0.0/takumi_1.0.0_darwin_amd64.tar.gz"
      sha256 "72d1d4f47f6b9cdd867804a5fdfc3fe77ddc45dbf1c07ea68529895c6bfa53f0"
    end

    on_arm do
      url "https://github.com/T-Fizz/takumi/releases/download/v1.0.0/takumi_1.0.0_darwin_arm64.tar.gz"
      sha256 "d49c92ba467b2d0c5cc6d2f7aa8825d6b2e926e7dc419c9658883803ba330082"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/T-Fizz/takumi/releases/download/v1.0.0/takumi_1.0.0_linux_amd64.tar.gz"
      sha256 "f2cfe1246c847d634497d3e982ac60fa149607eb5454c1dc6b0850403a40418a"
    end

    on_arm do
      url "https://github.com/T-Fizz/takumi/releases/download/v1.0.0/takumi_1.0.0_linux_arm64.tar.gz"
      sha256 "ebb958ef6e5cd508ad50f0939b13a1079015a05204711fff2dd82f52e4c0331b"
    end
  end

  def install
    bin.install "takumi"
    bin.install_symlink bin/"takumi" => "t"
  end

  test do
    assert_match "takumi", shell_output("#{bin}/takumi --help")
  end
end
