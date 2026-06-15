class AwsTerminal < Formula
  desc "Terminal UI for creating and managing AWS resources"
  homepage "https://github.com/ShAd0W20/aws-terminal"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ShAd0W20/aws-terminal/releases/download/v0.2.0/aws-terminal_v0.2.0_darwin_arm64.tar.gz"
      sha256 "d16a9cb64b088a096d52a095e1b40aca0d66cb8aca1f75921529b36387a61cd7"
    else
      url "https://github.com/ShAd0W20/aws-terminal/releases/download/v0.2.0/aws-terminal_v0.2.0_darwin_amd64.tar.gz"
      sha256 "c274b77e352961dd3337ca9e57c421e2c2254fa55072ab055e090f93365362dd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ShAd0W20/aws-terminal/releases/download/v0.2.0/aws-terminal_v0.2.0_linux_amd64.tar.gz"
      sha256 "98581e0d0d55afa998a61e791754f0f6e6621a2faff688b18ee3267812842c82"
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
