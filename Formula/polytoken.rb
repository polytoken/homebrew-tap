class Polytoken < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.3.0"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.3.0/macos-arm64/polytoken.tar.gz"
    sha256 "29f1b2c78e9b29d44e1b54c0d80ffe085b19cc22fac3a8a18a5a2f95d857aa02"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.3.0/macos-amd64/polytoken.tar.gz"
    sha256 "f957819020b429816694ad7bd2d7b2f6f5ab54ac5057d0bba3074686b4483197"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.3.0/linux-arm64/polytoken.tar.gz"
    sha256 "25c9b8ea3a88f349f2c20a1c8a4983246b9bb75754a6b824dc99afd879d91439"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.3.0/linux-amd64/polytoken.tar.gz"
    sha256 "07ca7870ebf9d8030e38c3edfaad8d77d8e3d787f579191a8545a1d8616ecf93"
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
