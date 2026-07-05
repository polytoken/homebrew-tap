class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.4.0-unstable.7"
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.7/macos-arm64/polytoken.tar.gz"
    sha256 "55ae83d317c43983cf9fc105f9ddfb4e25479fdfd53863ea2159c008f7db0077"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.7/macos-amd64/polytoken.tar.gz"
    sha256 "14f046346f8ced92d966e8edad2f99494468a7f2d4a151e95a503737af92f13b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.7/linux-arm64/polytoken.tar.gz"
    sha256 "24b62ef783c1a422a12f51df9f16a303e34ee1bbb6ceea83f3472a93f5933660"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.7/linux-amd64/polytoken.tar.gz"
    sha256 "7537d3cfa5f6149504de6627750242ef0b6f18e47a1132eb292dfc943f33bf36"
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
