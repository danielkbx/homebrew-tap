class Ytd < Formula
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"
  url "https://github.com/danielkbx/youtrackd/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "5b53a6fdce14de6fafd56b2efff4c3b79f5f4bf468f97dbd107f6c8683ac2aa2"
  version "1.3.0"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ytd", shell_output("#{bin}/ytd help")
  end
end
