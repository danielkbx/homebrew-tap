class Ytd < Formula
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"
  url "https://github.com/danielkbx/youtrackd/archive/refs/tags/v1.7.0.tar.gz"
  sha256 "c011d650e8048732c3097778a7ff6e2f49b9ba1e780461ffa74d9344af0c9de0"
  version "1.7.0"
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
