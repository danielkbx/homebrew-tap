class Cfd < Formula
  desc "CLI tool for Clockify time tracking"
  homepage "https://github.com/danielkbx/clockifyd"
  url "https://github.com/danielkbx/clockifyd/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "ec832c2cde19124d3240203c2869bc48680fa804cbd42eae2d1c02bea443dc4c"
  version "1.5.0"
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
