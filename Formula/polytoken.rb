class Polytoken < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.4.1"

  license :cannot_represent
  conflicts_with "polytoken-unstable", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.4.1/macos-arm64/polytoken.tar.gz"
    sha256 "91ab87fb5124021ff8b3e59775faba447a6eb5f02278aa4879c22db3e6eb85b5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.4.1/macos-amd64/polytoken.tar.gz"
    sha256 "bfd4bc3417a402033e771cbb25edffed8961a3b0502313a0753c6cec91ac6c67"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.4.1/linux-arm64/polytoken.tar.gz"
    sha256 "f642d15277b57734dcf7d5f7139e32615c90f8fbfacecffb42c804653e6e7963"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.4.1/linux-amd64/polytoken.tar.gz"
    sha256 "11000ad63668eb16a6662408ba21a110a29f8544fc455a5cca9b53bbff8d65fd"
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
