class Cfd < Formula
  desc "CLI tool for Clockify time tracking"
  homepage "https://github.com/danielkbx/clockifyd"
  url "https://github.com/danielkbx/clockifyd/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b833e2f71e2b7fc54b0649fc62868f4e262b0f7c934596341f4d6ea3f5506796"
  version "1.0.0"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "cfd", shell_output("#{bin}/cfd help")
  end
end
