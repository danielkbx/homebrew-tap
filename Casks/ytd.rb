cask "ytd" do
  version "1.0.3"

  on_arm do
    url "https://github.com/danielkbx/youtrackd/releases/download/v#{version}/ytd-aarch64-apple-darwin.tar.gz"
    sha256 "d0bd199458da219fcf6478976d3fa10c80b53fe019b52ab3ea0f79e7be28d6a6"
  end
  on_intel do
    url "https://github.com/danielkbx/youtrackd/releases/download/v#{version}/ytd-x86_64-apple-darwin.tar.gz"
    sha256 "20aca7c2cca15d4cfe8dcf5e91a45a33db7dd2240e05317e27d0153780d8ae25"
  end

  name "ytd"
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"

  binary "ytd"
end
