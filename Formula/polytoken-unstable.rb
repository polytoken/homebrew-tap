class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.4.0-unstable.4"
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.4/macos-arm64/polytoken.tar.gz"
    sha256 "7fd0c13988591636c018787184a8a32965bdebdcfc6c94905ea7e3b286dabd49"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.4/macos-amd64/polytoken.tar.gz"
    sha256 "6c82f2a6ba8a5a825780fc5664f6d7e7363315c403d71bcf541f49a8e583d881"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.4/linux-arm64/polytoken.tar.gz"
    sha256 "3ba14669ca8084bce7cdb24367612c0e3064b3574e50b0210de15888f50e085f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0-unstable.4/linux-amd64/polytoken.tar.gz"
    sha256 "e59f23dc684a3d78b478751cffd06f871de18ecdd8e21068bfb07d478ae4f092"
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
