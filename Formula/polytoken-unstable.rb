class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.5.0-unstable.9"
  # See version_scheme rules in tools/release-update-homebrew-tap.sh.
  # Bump this integer at each branch-replacement transition; never decrease it.
  version_scheme 1
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.9/macos-arm64/polytoken.tar.gz"
    sha256 "b1638c1da1ff62866632da000a49a3c74acfe2e89c60ef608aa014737690c17b"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.9/macos-amd64/polytoken.tar.gz"
    sha256 "aaf03736f69c6d1a268160a28f9d8312f063aea7d57882e8491e97bd4469e7e8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.9/linux-arm64/polytoken.tar.gz"
    sha256 "9509debcfee1e289eebe82b552dae97890c62841ef7bf4ad63f113d755c48b8c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.9/linux-amd64/polytoken.tar.gz"
    sha256 "0ea668345dd91fe9fcf3306e4fcbf2cf49aa074938ae68da42a06a3bbe30d6b0"
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
