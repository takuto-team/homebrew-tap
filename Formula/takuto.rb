class Takuto < Formula
  desc "Interactive CLI for managing Takuto orchestration containers"
  homepage "https://github.com/takuto-team/takuto-cli"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.6/takuto-darwin-arm64"
      sha256 "346b3928546365e3d936f7be695ad7689c04548860af71393c6aee8dc3eec04f"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.6/takuto-darwin-amd64"
      sha256 "f47d83df18b87c3e2c61e6aff1f01c5b0aa79af8fdf1175b06423ac25232f20d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.6/takuto-linux-arm64"
      sha256 "a3ef2da72990566773793c43b5c7200e955899a949643db4e442c313012ea624"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.6/takuto-linux-amd64"
      sha256 "8962c8c6cf41fec281c688b53bd424d97ebf918acd2f64d751040b7024b450a0"
    end
  end

  def install
    bin.install Dir["*"].first => "takuto"
  end

  test do
    assert_match "0.5.6", shell_output("#{bin}/takuto --version")
  end
end
