class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.5.0-unstable.6"
  # See version_scheme rules in tools/release-update-homebrew-tap.sh.
  # Bump this integer at each branch-replacement transition; never decrease it.
  version_scheme 1
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.6/macos-arm64/polytoken.tar.gz"
    sha256 "9492e79d2c26247df9b3c694acfb3e2325fb5034c149ff905eff318462656907"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.6/macos-amd64/polytoken.tar.gz"
    sha256 "e6ccbb92d29c80b90408cecec75a9bfbfe877d57d5e98170e1d6f9c3a648bab0"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.6/linux-arm64/polytoken.tar.gz"
    sha256 "896f765d24d11765b15f772b1ed1bb8cb8e930d05740ad66de83e5c13c8a9d8f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.6/linux-amd64/polytoken.tar.gz"
    sha256 "2a9956d9967ada1f7e3fe00125a76d77d69eb79b3803c111a6b7ffd5dee3aec0"
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
