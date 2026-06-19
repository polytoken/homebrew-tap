class Polytoken < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.2.1"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.2.1/macos-arm64/polytoken.tar.gz"
    sha256 "e2147d4af0f93c07e150c6f4119256056e2cfa40c88218bc677f33db5c27aeb2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.2.1/macos-amd64/polytoken.tar.gz"
    sha256 "d9f81e7d692008a9956fb446034149decd640607ce0f22481506aa294172069d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.2.1/linux-arm64/polytoken.tar.gz"
    sha256 "ef1e23c065c40ce95e8ff99d9fb04108845601bdd5b9ce513afd211c2bde4713"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.2.1/linux-amd64/polytoken.tar.gz"
    sha256 "b2626285a827770c115a1a0ca749278212908e9554955d3aaff1c8e6c7b75f11"
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
