class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.4.0-unstable.5"
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.5/macos-arm64/polytoken.tar.gz"
    sha256 "518b63ffb5824475b6f3bfff0422c1a8d3ee1dfd512fa382548087b50fd30363"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.5/macos-amd64/polytoken.tar.gz"
    sha256 "7a720551b66b5d7ea115dc78f058386760d86eb3bcb6ce55e26846dfdfbe2675"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.5/linux-arm64/polytoken.tar.gz"
    sha256 "a9a8a0a8c945589eee0ee59cca90643579dbd82d2046c78a889760f489db9a5c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.5/linux-amd64/polytoken.tar.gz"
    sha256 "ef19bd99f97028840dd8dee75fcdae33a974483b5a4ac96f877a941b3f64bc01"
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
