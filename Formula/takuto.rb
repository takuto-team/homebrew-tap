class Takuto < Formula
  desc "Interactive CLI for managing Takuto orchestration containers"
  homepage "https://github.com/takuto-team/takuto-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.0/takuto-darwin-arm64"
      sha256 "bab5eb85f993af96fdd0a63549c8b8d78354004e3d8a646fc4be41e97665d3ac"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.0/takuto-darwin-amd64"
      sha256 "792038eb31c8c1e43250f8f29ee6cdbd5130ec37aa74edb6f848f8f0c94aeab2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.0/takuto-linux-arm64"
      sha256 "1932555a258e691b91b6649b9dbcf0dedb83654060bd31961f37aa53cbb29f42"
    end
    on_intel do
      url "https://github.com/takuto-team/takuto-cli/releases/download/vv0.5.0/takuto-linux-amd64"
      sha256 "35b713a12186dec10736a22151b84002949ba1a81671bd7426a9aa12a269520a"
    end
  end

  def install
    bin.install Dir["*"].first => "takuto"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/takuto --version")
  end
end
