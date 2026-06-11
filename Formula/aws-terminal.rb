class AwsTerminal < Formula
  desc "Terminal UI for creating and managing AWS resources"
  homepage "https://github.com/ShAd0W20/aws-terminal"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ShAd0W20/aws-terminal/releases/download/v0.1.1/aws-terminal_v0.1.1_darwin_arm64.tar.gz"
      sha256 "c4109ccf1eb98acb343b8b8d0d2085763a727b82ac4a19ca4164d1d2f855616c"
    else
      url "https://github.com/ShAd0W20/aws-terminal/releases/download/v0.1.1/aws-terminal_v0.1.1_darwin_amd64.tar.gz"
      sha256 "d433d17e91ad61a62cf8d58db4a5255eb59bc279a7a4c89c7e8819519c32c6cc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ShAd0W20/aws-terminal/releases/download/v0.1.1/aws-terminal_v0.1.1_linux_amd64.tar.gz"
      sha256 "1573428d8f856cf5e28562c1ee69248b324c8a3736c8f403706f07642917ca48"
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
