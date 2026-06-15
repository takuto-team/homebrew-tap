class Takuto < Formula
  desc "Interactive CLI for managing Takuto orchestration containers"
  homepage "https://github.com/takuto-team/takuto-cli"
  version "0.4.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.4.10/takuto-darwin-arm64"
      sha256 "4ecfa5558012a70ebbda8a19dc071c43856bfc2835d061121072dc20b6f74015"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.4.10/takuto-darwin-amd64"
      sha256 "6fed7189a013a7a157b798e83a5437c96b79c082cd780e1bb60de802cb84b93e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.4.10/takuto-linux-arm64"
      sha256 "c92aeea0ad27df229e40269c0e7fc26578ad5c1a71f0fb004095de3d20d07c8e"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.4.10/takuto-linux-amd64"
      sha256 "38a15d0d5d318408b03ca3b1557ed91d92256e80fe583e0c5af9599104686cb7"
    end
  end

  def install
    bin.install Dir["*"].first => "takuto"
  end

  test do
    assert_match "0.4.10", shell_output("#{bin}/takuto --version")
  end
end
