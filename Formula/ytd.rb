class Ytd < Formula
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danielkbx/youtrackd/releases/download/v1.0.1/ytd-aarch64-apple-darwin.tar.gz"
      sha256 "c3a559e2fc610c33e73076a2fcfc997caade9069abb9a49d8e5f68866ea8474d"
    end
    on_intel do
      url "https://github.com/danielkbx/youtrackd/releases/download/v1.0.1/ytd-x86_64-apple-darwin.tar.gz"
      sha256 "ff3d169c77e0efe1dd2d51f57444476736b35164eed763baaa336c9bd051478f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/danielkbx/youtrackd/releases/download/v1.0.1/ytd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb3981006999f00e5fb5bbc78d78e6b844e4f106a3a7b5ad1156f224e72c4600"
    end
    on_intel do
      url "https://github.com/danielkbx/youtrackd/releases/download/v1.0.1/ytd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c9197cbbd7923c27a17608eb7722b4b3a939a92301e6ac865d1236085b5dc8a"
    end
  end

  def install
    bin.install "ytd"
  end

  test do
    assert_match "ytd", shell_output("#{bin}/ytd help")
  end
end
