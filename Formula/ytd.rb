class Ytd < Formula
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"
  url "https://github.com/danielkbx/youtrackd/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "80212a3e4a7fa02dfdc9ab693ebcb460c1d6cad12e2a3a3e0e2967df3e6c9974"
  version "1.0.6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ytd", shell_output("#{bin}/ytd help")
  end
end
