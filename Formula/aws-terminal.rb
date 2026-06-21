class AwsTerminal < Formula
  desc "Terminal UI for creating and managing AWS resources"
  homepage "https://github.com/ShAd0W20/aws-terminal"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ShAd0W20/aws-terminal/releases/download/v0.3.0/aws-terminal_v0.3.0_darwin_arm64.tar.gz"
      sha256 "172ecd2de731f44b6e998b03f7e883b23f6d39191977c97a8d9e941320062486"
    else
      url "https://github.com/ShAd0W20/aws-terminal/releases/download/v0.3.0/aws-terminal_v0.3.0_darwin_amd64.tar.gz"
      sha256 "a412b8d4932fd17ae8b12a32c941860708f3d5aeed666aed7a71b31d63750bc1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ShAd0W20/aws-terminal/releases/download/v0.3.0/aws-terminal_v0.3.0_linux_amd64.tar.gz"
      sha256 "28e78743407277e70a6c3cdc0bf2dbdc4b7ac99397415a59bd202d3c46c4cae0"
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
