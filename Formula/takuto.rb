class Takuto < Formula
  desc "Interactive CLI for managing Takuto orchestration containers"
  homepage "https://github.com/takuto-team/takuto-cli"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.7/takuto-darwin-arm64"
      sha256 "79e851e583f91f8ebdbc878e69537e5bb13bee162b45285e19181c33f01d74dc"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.7/takuto-darwin-amd64"
      sha256 "dd786e9e29a25ce1f7f400167e284f902bb6fbae203cfaf709f200dd83f1ca31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.7/takuto-linux-arm64"
      sha256 "4714715ee3738a88affb5b357a95338a7dee798c5c54ca29d8e9ef44282d7f03"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.7/takuto-linux-amd64"
      sha256 "23866fc9edfa64007c5b1fcdbe96823faf52c7c9a82f2bc49ab967344b9a7017"
    end
  end

  def install
    bin.install Dir["*"].first => "takuto"
  end

  test do
    assert_match "0.5.7", shell_output("#{bin}/takuto --version")
  end
end
