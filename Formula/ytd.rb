class Ytd < Formula
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"
  url "https://github.com/danielkbx/youtrackd/archive/refs/tags/v1.10.0.tar.gz"
  sha256 "4f21f7c3b5e66de76991e45701398e4684acf236e06c61733e16aac691da1c48"
  version "1.10.0"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    generate_completions_from_executable(bin/"ytd", "completion")
  end

  test do
    assert_match "ytd", shell_output("#{bin}/ytd help")
  end
end
