class Ytd < Formula
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"
  url "https://github.com/danielkbx/youtrackd/archive/refs/tags/v1.7.1.tar.gz"
  sha256 "ec426ba25083b97093a1045196f189ba453582b468484ffaacecf18ba4a4a708"
  version "1.7.1"
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
