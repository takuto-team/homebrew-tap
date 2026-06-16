class Takuto < Formula
  desc "Interactive CLI for managing Takuto orchestration containers"
  homepage "https://github.com/takuto-team/takuto-cli"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.3/takuto-darwin-arm64"
      sha256 "421ae523388cc8af2500763fa07f6321e3e11dbb35b36899cb86c01ed1eac593"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.3/takuto-darwin-amd64"
      sha256 "7417d66bf381f96c450efd7d3ff31cff489b1d5c0f432a9f34c577a214adb112"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.3/takuto-linux-arm64"
      sha256 "1f0f2c71bf52ae49d684779cc5f5ca077381b48283b6616cbf83fe8c6009c274"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.3/takuto-linux-amd64"
      sha256 "36f97a1c1960cd5d1f14cb9f2e3be21ee2cb7cb2b7f1395b70fc8b429564e78c"
    end
  end

  def install
    bin.install Dir["*"].first => "takuto"
  end

  test do
    assert_match "0.5.3", shell_output("#{bin}/takuto --version")
  end
end
