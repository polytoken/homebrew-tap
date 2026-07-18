class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.5.0-unstable.10"
  # See version_scheme rules in tools/release-update-homebrew-tap.sh.
  # Bump this integer at each branch-replacement transition; never decrease it.
  version_scheme 1
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.10/macos-arm64/polytoken.tar.gz"
    sha256 "ab4f57eab1071634d0637b01604684b1e0e14f6d5e8aa7001c9004341f2647d5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.10/macos-amd64/polytoken.tar.gz"
    sha256 "2ec03aa21f4a067ab26513cea204a61b7282b6bef36ef28ef338cce0d5748f60"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.10/linux-arm64/polytoken.tar.gz"
    sha256 "4b5c16b754648607849bec3aa67d3b5d98b4a3a6c810f05590a12b424d45aeb5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.10/linux-amd64/polytoken.tar.gz"
    sha256 "a10a734038aa82934066f6077e26e0b13464b23e19f3872077ba660ce6f23528"
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
