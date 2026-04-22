cask "ytd" do
  version "1.0.4"

  on_arm do
    url "https://github.com/danielkbx/youtrackd/releases/download/v#{version}/ytd-aarch64-apple-darwin.tar.gz"
    sha256 "1eaa187ceecc4846a6e2d8524ee67c33d6ba12d7ee748ea883d238a381dfc72d"
  end
  on_intel do
    url "https://github.com/danielkbx/youtrackd/releases/download/v#{version}/ytd-x86_64-apple-darwin.tar.gz"
    sha256 "c5ac5db73299363609e195d617dbadcfb97052f30debb045361cfa8f767f2d3e"
  end

  name "ytd"
  desc "CLI tool for reading and editing YouTrack tickets and knowledge base articles"
  homepage "https://github.com/danielkbx/youtrackd"

  binary "ytd", quarantine: false
end
