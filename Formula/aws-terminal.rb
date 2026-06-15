class AwsTerminal < Formula
  desc "Terminal UI for creating and managing AWS resources"
  homepage "https://github.com/ShAd0W20/aws-terminal"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ShAd0W20/aws-terminal/releases/download/v0.2.1/aws-terminal_v0.2.1_darwin_arm64.tar.gz"
      sha256 "029ffe53972d2317233b69541d69d4719e98e55ce86af2ca1211bb79cf10c613"
    else
      url "https://github.com/ShAd0W20/aws-terminal/releases/download/v0.2.1/aws-terminal_v0.2.1_darwin_amd64.tar.gz"
      sha256 "f5fa30d15ba40eb9c89c94ed4438d839296620bf19081efcf1369115b9b13655"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ShAd0W20/aws-terminal/releases/download/v0.2.1/aws-terminal_v0.2.1_linux_amd64.tar.gz"
      sha256 "43bf1ace2d6211f0079d9062072a0fa10965ee0cc843ef6d1fa6fb85d384c08e"
    else
      odie "aws-terminal only publishes Linux amd64 release assets for now"
    end
  end

  def install
    bin.install "aws-terminal"
  end

  test do
    assert_predicate bin/"aws-terminal", :exist?
  end
end
