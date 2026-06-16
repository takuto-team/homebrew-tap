class Takuto < Formula
  desc "Interactive CLI for managing Takuto orchestration containers"
  homepage "https://github.com/takuto-team/takuto-cli"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.4/takuto-darwin-arm64"
      sha256 "d4489b1d10d89ee24d1a01ef9580f6e0af2e41119e950bd81ec4ca9fbb3cc8f0"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.4/takuto-darwin-amd64"
      sha256 "9d46de56a6dfefc81925c8c9f1e282cf471e2d1e458ba472792d046fddc89a4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.4/takuto-linux-arm64"
      sha256 "1cac5322ca6b1cd0c0b6541b22dcdeafa3ee4557e8095b51195a4f7a13b0a561"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.4/takuto-linux-amd64"
      sha256 "47f183a9611398a6a6ad915e9c45363046756a53bd86c3d7098aae6ebc7d833a"
    end
  end

  def install
    bin.install Dir["*"].first => "takuto"
  end

  test do
    assert_match "0.5.4", shell_output("#{bin}/takuto --version")
  end
end
