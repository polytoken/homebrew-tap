class Polytoken < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.2.2"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.2.2/macos-arm64/polytoken.tar.gz"
    sha256 "c4cc625939b5cc6161011165d33964a641cfe18accbee8c84206312a3ec4651a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.2.2/macos-amd64/polytoken.tar.gz"
    sha256 "8db7417d4c4d307306ce89dd2fb11dc16620114c3302d11dd76bd6794fd46d48"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.2.2/linux-arm64/polytoken.tar.gz"
    sha256 "09130fe15ab6078a182fd3350040b08eab61585c07752af8db5d9700b5253532"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.2.2/linux-amd64/polytoken.tar.gz"
    sha256 "c18052fe97d07b0df7ad84004ee7bcba72360d77f35e4553c8f66ca3e78c3a59"
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
