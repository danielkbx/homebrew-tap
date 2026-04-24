class Ytd < Formula
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"
  url "https://github.com/danielkbx/youtrackd/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "4fc75e5d6ffc48479b39123263492127472697cd4a8530fa475fa65c620aff22"
  version "1.2.0"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ytd", shell_output("#{bin}/ytd help")
  end
end
