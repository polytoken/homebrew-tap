class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.4.0-unstable.2"
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.2/macos-arm64/polytoken.tar.gz"
    sha256 "b7356f3544f7c8384c43c64e3d817882ecf954589e689abfa8eebece98c90b7e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.2/macos-amd64/polytoken.tar.gz"
    sha256 "7287b301bdf280ba7908d4dea7ea8a6d57ad2f02d914bd1424ffe74f8b76fa12"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.2/linux-arm64/polytoken.tar.gz"
    sha256 "84b5e1457f89eb582917116aa66593691fa72ad14ecfc3dc521fcf43a9912d43"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.2/linux-amd64/polytoken.tar.gz"
    sha256 "ae4ba26ef9a7ef53a07270fd6f0d591afea5973ceaa44e704b1fc7f652aae73c"
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
