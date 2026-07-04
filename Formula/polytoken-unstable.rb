class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.4.0-unstable.6"
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.6/macos-arm64/polytoken.tar.gz"
    sha256 "5ba9f5a01fc143a06f2f1a35a878f73274a1594d4308236145a0161a25fa93a8"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.6/macos-amd64/polytoken.tar.gz"
    sha256 "028bb7b41bdc6a0b78cc07547eb735867ef47b58391338929908e6ccc73458a2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.6/linux-arm64/polytoken.tar.gz"
    sha256 "f7e178fbbd3404ecf0106d4c30682ef3cb37a900aa3b4d6baea7b12754a94359"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.6/linux-amd64/polytoken.tar.gz"
    sha256 "9beca7cec0210779ac34a3f850a501a7d943f45eb51078a6ece825ed82c1101f"
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
