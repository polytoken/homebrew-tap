class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.4.0-unstable.3"
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.3/macos-arm64/polytoken.tar.gz"
    sha256 "2f7c41383e1889c6a2fa0d23e94c82e9a8cd77df9a3421eaf85386ec9b923386"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.3/macos-amd64/polytoken.tar.gz"
    sha256 "27bed0639cb596ab3548ae2de3adb52e7ffbaa9c9ff604e13ff17271005bd3d2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.3/linux-arm64/polytoken.tar.gz"
    sha256 "de1ff08ef0ee49792dd909422d055fd539c9f0690b1ca6658c38486528f987de"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.3/linux-amd64/polytoken.tar.gz"
    sha256 "468d6f3116ceb7ee3af65aeaa73a74ce745aeb78071519b12a86b071f25ca270"
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
