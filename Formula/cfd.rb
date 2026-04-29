class Cfd < Formula
  desc "CLI tool for Clockify time tracking"
  homepage "https://github.com/danielkbx/clockifyd"
  url "https://github.com/danielkbx/clockifyd/archive/refs/tags/v1.6.2.tar.gz"
  sha256 "c5d3e697c48e2d46971f02caeb4ea9678b73a47080f32e1af1954b213b51f858"
  version "1.6.2"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    generate_completions_from_executable(bin/"cfd", "completion")
  end

  test do
    assert_match "cfd", shell_output("#{bin}/cfd help")
  end
end
