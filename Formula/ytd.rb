class Ytd < Formula
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"
  version "1.0.2"
  license "MIT"
  bottle :unneeded

  on_macos do
    on_arm do
      url "https://github.com/danielkbx/youtrackd/releases/download/v1.0.2/ytd-aarch64-apple-darwin.tar.gz"
      sha256 "ccb1adf779df0285ce0e9a80df405e7c3f4dbbaa0bd7dfab1413dccf6864cd58"
    end
    on_intel do
      url "https://github.com/danielkbx/youtrackd/releases/download/v1.0.2/ytd-x86_64-apple-darwin.tar.gz"
      sha256 "8a675de4eaf613bb38d19769d3aa7abeef4d3495f0099329861545f19fe00914"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/danielkbx/youtrackd/releases/download/v1.0.2/ytd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77de93c26b43380da69c8fc87beb2e4fb6da113fb315af5534db5748e26f4d4f"
    end
    on_intel do
      url "https://github.com/danielkbx/youtrackd/releases/download/v1.0.2/ytd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22880d6591e159fd2e34ea2009d9a7bd2b2cd09e8e41d6a5977d3cb28bb55225"
    end
  end

  def install
    bin.install "ytd"
  end

  test do
    assert_match "ytd", shell_output("#{bin}/ytd help")
  end
end
