class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.4.0"
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0/macos-arm64/polytoken.tar.gz"
    sha256 "38eaa0fad40d1a48d551a39472f9fd0fb0e71f25b16af08762dbb10fcda28a04"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0/macos-amd64/polytoken.tar.gz"
    sha256 "b5afb1a15050add62c4cd8bcad9a291a835b6ec3a3c453e9a77764b65ce64325"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.4.0/linux-arm64/polytoken.tar.gz"
    sha256 "d312ba2280810efa51652478838a2853a87b00621c797a79cdb7c3964c4ed7a6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.4.0/linux-amd64/polytoken.tar.gz"
    sha256 "dc580919b2448323ee6990d390445494b61b5f21f0b280f65bdf2560dc0e520a"
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
