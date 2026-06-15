class Takuto < Formula
  desc "Interactive CLI for managing Takuto orchestration containers"
  homepage "https://github.com/takuto-team/takuto-cli"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.4.8/takuto-darwin-arm64"
      sha256 "4f47a02f1da88c98cde27f3250c4ae0b2933b34a7c733c65797434d5f48c256f"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.4.8/takuto-darwin-amd64"
      sha256 "1ebf663ee64bd0ccf253223947241a7569cb3327a329b69f6bdc2d27c9daef05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.4.8/takuto-linux-arm64"
      sha256 "f0ec465f17f2c65f1e9d29cb16c857652649a854a0d288b6d7fced956e3c3bff"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.4.8/takuto-linux-amd64"
      sha256 "ace7931fc3a43034cf027eb7bf07c1b7af6e1e05cb74f91e06cfa4941ddc0bcb"
    end
  end

  def install
    bin.install Dir["*"].first => "takuto"
  end

  test do
    assert_match "0.4.8", shell_output("#{bin}/takuto --version")
  end
end
