class Polytoken < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.3.2"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.3.2/macos-arm64/polytoken.tar.gz"
    sha256 "5c103988e9b67d37768f31439517af0be7fe1c0df2670258ff7f8d907c93b720"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.3.2/macos-amd64/polytoken.tar.gz"
    sha256 "5c5582bf774dc4183a131b38e7739742b7af8ff692e6529c75163b851c613e2a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.3.2/linux-arm64/polytoken.tar.gz"
    sha256 "b759a35c6f27b84dfd695c57401147c0838fba614f8dbac63ad810439ce2f4d8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.3.2/linux-amd64/polytoken.tar.gz"
    sha256 "29f00347f062b212884044bd14b0d0b617175cde9a3cc9ca85bb08f606908d91"
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
