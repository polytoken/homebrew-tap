class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.5.0-unstable.1"
  # See version_scheme rules in tools/release-update-homebrew-tap.sh.
  # Bump this integer at each branch-replacement transition; never decrease it.
  version_scheme 1
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.1/macos-arm64/polytoken.tar.gz"
    sha256 "424b70b2cbc3a575312c35b5ea9184650ccd24c3301dde5dc7f9da478cd2de3d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.1/macos-amd64/polytoken.tar.gz"
    sha256 "7ae1968cbc36b238848cb1b349600672079f32624bc54951abca7c2d2af7025a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.1/linux-arm64/polytoken.tar.gz"
    sha256 "a5c8ea097aae5d5370ec6996d793ffb0246970cdb17a492ea2ed44bdc3aeb8fa"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.1/linux-amd64/polytoken.tar.gz"
    sha256 "97dc398c15d70271d6e63e294be284016c0eae7fb9f8fdac484d8f95cbff3f6f"
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
