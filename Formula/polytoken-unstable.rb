class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.5.0-unstable.7"
  # See version_scheme rules in tools/release-update-homebrew-tap.sh.
  # Bump this integer at each branch-replacement transition; never decrease it.
  version_scheme 1
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.7/macos-arm64/polytoken.tar.gz"
    sha256 "f0ba8dabd228cfb47e7e56b58c8d900adf7b20872da0872a7bccbcae4fd90839"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.7/macos-amd64/polytoken.tar.gz"
    sha256 "5c64ad7a18546c042b7154582de1cee4089919ae55722c1447653fdc0923cf33"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.7/linux-arm64/polytoken.tar.gz"
    sha256 "114b68d835f20ee59e07f036cc7cd587c3a7aa70d6ad12558a57be902bbe4da0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.7/linux-amd64/polytoken.tar.gz"
    sha256 "08ebd89dbf28a6eb573ae2b4143a900900aaeea897256b345c3d3af8098fc634"
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
