class Takuto < Formula
  desc "Interactive CLI for managing Takuto orchestration containers"
  homepage "https://github.com/takuto-team/takuto-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.6.0/takuto-darwin-arm64"
      sha256 "fbe94f37f399a2dcb8d560b857d5b768cda188b9b9f713ae1c59a16709c97cce"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.6.0/takuto-darwin-amd64"
      sha256 "ddd0c366e3f2b65deca7350af5cd538abc84a1e58f1606423d7386c3aba83665"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.6.0/takuto-linux-arm64"
      sha256 "e2ce755ad194f38320e7a5110696a92c1bcc336e26c4a238c6bac2166d4fe70b"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.6.0/takuto-linux-amd64"
      sha256 "6157174918cf03ad4f8b4c56c72ce5bcbd7e28b9876133de5fbca5df79db9562"
    end
  end

  def install
    bin.install Dir["*"].first => "takuto"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/takuto --version")
  end
end
