class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.5.0-unstable.2"
  # See version_scheme rules in tools/release-update-homebrew-tap.sh.
  # Bump this integer at each branch-replacement transition; never decrease it.
  version_scheme 1
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.2/macos-arm64/polytoken.tar.gz"
    sha256 "a1f237d094a56e99c22f393587f94d98a9e30698f9d5ccf1e687dade14872f11"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.2/macos-amd64/polytoken.tar.gz"
    sha256 "6f092c48c3cb426cb23c1b8f568a01a13513d596bd949f2293f0832537353792"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.2/linux-arm64/polytoken.tar.gz"
    sha256 "9d7963309beca9253b19291ae49bde279d24a4001e9445730b360bc1f7b107e8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.2/linux-amd64/polytoken.tar.gz"
    sha256 "bc7deaf9e4962779c2ebf60da400a1d9b6bd114d52752b3e93f842f70d1b9427"
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
