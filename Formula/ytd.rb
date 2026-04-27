class Ytd < Formula
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"
  url "https://github.com/danielkbx/youtrackd/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "b7eb62c993c087c443c79611aa5c602597f3b4716db8c812cfc19a3a80065b3b"
  version "1.5.0"
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
