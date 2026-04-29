class Cfd < Formula
  desc "CLI tool for Clockify time tracking"
  homepage "https://github.com/danielkbx/clockifyd"
  url "https://github.com/danielkbx/clockifyd/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "d8da7c2e38dedf16f56a6d3d206aef1c226ebe2b188dfaaa4e6e4fba43693091"
  version "1.6.0"
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
