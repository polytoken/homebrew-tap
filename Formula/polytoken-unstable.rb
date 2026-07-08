class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.5.0-unstable.3"
  # See version_scheme rules in tools/release-update-homebrew-tap.sh.
  # Bump this integer at each branch-replacement transition; never decrease it.
  version_scheme 1
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.3/macos-arm64/polytoken.tar.gz"
    sha256 "b01bbc46048a68fd09731ce39f37ab7ebc5bb7fcf0a1e407fc754fdb7f78bc63"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.3/macos-amd64/polytoken.tar.gz"
    sha256 "ad6e67822b2b38916eefac787aeddaaf4e2a6c5c935a9586f3c67fa945854fa8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.3/linux-arm64/polytoken.tar.gz"
    sha256 "d1f177d70db798ff4ebd0f45809f9df6d83a9aa7fb03849dc9fe88d1ef6417dd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.3/linux-amd64/polytoken.tar.gz"
    sha256 "4122e57226311ea121efc9b26cd9707e7804f64ded7594d5e2737d8f62e966a0"
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
