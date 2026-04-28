class Ytd < Formula
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"
  url "https://github.com/danielkbx/youtrackd/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "dcba9832d80be02883c9c7e6eb6142edffae0c77c58b0d259454d8df1a481395"
  version "1.6.0"
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
