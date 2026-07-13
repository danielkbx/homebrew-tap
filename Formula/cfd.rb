class Cfd < Formula
  desc "CLI tool for Clockify time tracking"
  homepage "https://github.com/danielkbx/clockifyd"
  url "https://github.com/danielkbx/clockifyd/archive/refs/tags/v1.7.2.tar.gz"
  sha256 "e6d9b4a269a221f7fb2a1a395d19766e52bbdb5fb538fb1052f4cbb864dd166d"
  version "1.7.2"
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
