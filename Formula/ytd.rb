class Ytd < Formula
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"
  url "https://github.com/danielkbx/youtrackd/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "8f32e39b7dd3402a8e32cafcaff95d54b5249614e7b1333215ce53257ea8977b"
  version "1.0.5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ytd", shell_output("#{bin}/ytd help")
  end
end
