class Polytoken < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.2.0"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.2.0/macos-arm64/polytoken.tar.gz"
    sha256 "0c8053ab44f618559e7d09a3d9ed1e2fe7e734ce40741a57d1c731fbf9d682ef"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.2.0/macos-amd64/polytoken.tar.gz"
    sha256 "a9f0cc5769b2c0e2b02cbe2acfedef3c27cbd981f7e556adee37ea524aac100e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.2.0/linux-arm64/polytoken.tar.gz"
    sha256 "a9544437a1472c4b11432a799b436cef48bfe58570d3594ec265329455204ff6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.2.0/linux-amd64/polytoken.tar.gz"
    sha256 "fd5ea691674019341611ebf825f5367ba1fe7f01567509b55ea23480f581eeef"
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
