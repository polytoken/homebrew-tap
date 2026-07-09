class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.5.0-unstable.4"
  # See version_scheme rules in tools/release-update-homebrew-tap.sh.
  # Bump this integer at each branch-replacement transition; never decrease it.
  version_scheme 1
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.4/macos-arm64/polytoken.tar.gz"
    sha256 "aba038b11de6379f1c8dd0efed41b2d4fa3bb6431d1fbd0805458c0185510a0d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.4/macos-amd64/polytoken.tar.gz"
    sha256 "8d3e45f571679c81457cf5d35ccbf2333824aa203f03edccfc10c909261830ed"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.4/linux-arm64/polytoken.tar.gz"
    sha256 "179797cb1505e304524dc5afe5f3eee257bd456e461736037d4ab60a196dec14"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.4/linux-amd64/polytoken.tar.gz"
    sha256 "9b2daa94435f5ebc47effcbd61cd5c115f011fef7321da483b406c949f4ecddf"
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
