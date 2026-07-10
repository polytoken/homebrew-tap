class Polytoken < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.4.2"

  license :cannot_represent
  conflicts_with "polytoken-unstable", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.4.2/macos-arm64/polytoken.tar.gz"
    sha256 "df2c64c0fc65416c5911880db26d7f712d2aa384c2ae7595b432dd91e3e45295"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.4.2/macos-amd64/polytoken.tar.gz"
    sha256 "75f23672d4025d32efa2bc3b4411f2c9ebbbbb2bd48725ad9e6928c20dbc5667"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.4.2/linux-arm64/polytoken.tar.gz"
    sha256 "bd8a6d3acfa8e4231d93b165a3ab90423d2fcc34d6c93a28769ac67bcdb285e4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.4.2/linux-amd64/polytoken.tar.gz"
    sha256 "f6233c0da7f230d853dc2b4b97cd12cc38cba06963ae0668a9ae2d21282afcb3"
  else
    odie "Unsupported platform"
  end

  def install
    bin.install "polytoken"
  end

  test do
    system "#{bin}/polytoken", "--version"
  end
end
