class Polytoken < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.3.3"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.3.3/macos-arm64/polytoken.tar.gz"
    sha256 "ce51622828a0452e5fcec827b15bf527d8185ff987db93175ce325e2c9eedb5f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.3.3/macos-amd64/polytoken.tar.gz"
    sha256 "68cc9f9f90168139d1be819a700da45bdba4cb1585dcb81422d60c1d01ea29b8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.3.3/linux-arm64/polytoken.tar.gz"
    sha256 "c795a0717b48c8dfe3b3f7f98a37b4d2fd38287bf733258fdbea46be2aa90c26"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.3.3/linux-amd64/polytoken.tar.gz"
    sha256 "27e7f35084c8b9a91e9d0bd94950b0a774c56f593447045a9826526cb1f305c1"
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
