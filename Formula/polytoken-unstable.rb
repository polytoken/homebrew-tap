class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.4.0-unstable.1"
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.1/macos-arm64/polytoken.tar.gz"
    sha256 "96abee9d99efa2a8e90a03f8d23fda8b5ae2bfadc9fd9b18f7aaebe4b118f408"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.1/macos-amd64/polytoken.tar.gz"
    sha256 "be2021eec6e57fb99028c71467b6da6f2839e662797a9f5b4bccb497856423e0"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.1/linux-arm64/polytoken.tar.gz"
    sha256 "9d1fc6dccc7451e978d8ae2a10d617199e1eee287c392ab1b42777608e9916df"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.1/linux-amd64/polytoken.tar.gz"
    sha256 "ba3e8bc7815d4422c5a5fe254b5cd1e50001577fe789381efc38851700e91b20"
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
