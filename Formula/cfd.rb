class Cfd < Formula
  desc "CLI tool for Clockify time tracking"
  homepage "https://github.com/danielkbx/clockifyd"
  url "https://github.com/danielkbx/clockifyd/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "88de29a3e488a6bc451bf10a95aa955208afef726acbb970fe18b3b85c59f10a"
  version "1.1.0"
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
