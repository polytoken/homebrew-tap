class Polytoken < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.5.0"

  license :cannot_represent
  conflicts_with "polytoken-unstable", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.5.0/macos-arm64/polytoken.tar.gz"
    sha256 "b1de55c3059592bdba2bc2cb6a46991dd143a6e402231e1ac887f10aedb76fa9"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.5.0/macos-amd64/polytoken.tar.gz"
    sha256 "a9c78bcd87ebb28c4b5a89f3f5aa493c7af3aca817c5fb739d61b4b50677b291"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.5.0/linux-arm64/polytoken.tar.gz"
    sha256 "7070544ea4516ef5955e3b052d7ce00964abf2946562201b3299fd841cd35bce"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.5.0/linux-amd64/polytoken.tar.gz"
    sha256 "0f42e3e8a5d65212fee3b7a2ea909f50315ec07b6855a931b640ea2f37f9e325"
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
