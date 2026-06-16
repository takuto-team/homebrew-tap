class Takuto < Formula
  desc "Interactive CLI for managing Takuto orchestration containers"
  homepage "https://github.com/takuto-team/takuto-cli"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.5/takuto-darwin-arm64"
      sha256 "4c30a17e586839936388531ba4fe41f64639f240fec96f8f3e77e871bf4a5b1f"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.5/takuto-darwin-amd64"
      sha256 "48e30fa1893a8700966b88fc33800733b4d0c9b3642a904b8aa924ca0bb360f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.5/takuto-linux-arm64"
      sha256 "fb4bfbf0e60cceb9aab95be4467f239f0dc873d8b8ca8017444194c9757da0b9"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.5/takuto-linux-amd64"
      sha256 "312a1780d252c5110c43b39a98748de3eb2aa142721cf859659cd584da88f984"
    end
  end

  def install
    bin.install Dir["*"].first => "takuto"
  end

  test do
    assert_match "0.5.5", shell_output("#{bin}/takuto --version")
  end
end
