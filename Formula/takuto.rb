class Takuto < Formula
  desc "Interactive CLI for managing Takuto orchestration containers"
  homepage "https://github.com/takuto-team/takuto-cli"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.2/takuto-darwin-arm64"
      sha256 "1af3b8cccef9f0c628dd1666c68ec62f0495b50124ef88760d9e61735da0ebcf"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.2/takuto-darwin-amd64"
      sha256 "6d219247c867cecc2afabf4a9791aec1b9a3e5ac2d46229eaf3f2347c48c1a79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.2/takuto-linux-arm64"
      sha256 "d853c26eda0e6d5cc2612043602b667896bd23a7d8bcd30c99a4255f6b51e60f"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.2/takuto-linux-amd64"
      sha256 "8b2e64ee79bb6e7ea5f3c357c9390b55a62ef6b252024359f5ee60631395702d"
    end
  end

  def install
    bin.install Dir["*"].first => "takuto"
  end

  test do
    assert_match "0.5.2", shell_output("#{bin}/takuto --version")
  end
end
