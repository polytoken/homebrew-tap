class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.5.0-unstable.8"
  # See version_scheme rules in tools/release-update-homebrew-tap.sh.
  # Bump this integer at each branch-replacement transition; never decrease it.
  version_scheme 1
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.8/macos-arm64/polytoken.tar.gz"
    sha256 "fef45f2f5d920177f97eae70906ec5a021f06c3e3cf690b24d81fdf836c5acd1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.8/macos-amd64/polytoken.tar.gz"
    sha256 "e91a51f239ed2f5bd94f3e3162834443db652bd8726ee9b452b0517115af3320"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.8/linux-arm64/polytoken.tar.gz"
    sha256 "e5be653c98d730ac8f48511a0f8a961c8631426585ccdf5674437ecb152e56e1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.8/linux-amd64/polytoken.tar.gz"
    sha256 "2f30a2e2550c640613140cffd1ce4c640b157ce77b53b988baee8158709fcbe6"
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
