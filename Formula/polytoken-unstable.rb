class PolytokenUnstable < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.5.0-unstable.5"
  # See version_scheme rules in tools/release-update-homebrew-tap.sh.
  # Bump this integer at each branch-replacement transition; never decrease it.
  version_scheme 1
  license :cannot_represent
  conflicts_with "polytoken", because: "both install the polytoken executable"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.5/macos-arm64/polytoken.tar.gz"
    sha256 "42da2ef8fb47c92f8971909ef80cd765096106e999e0a9536abcf02b48eba717"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.5/macos-amd64/polytoken.tar.gz"
    sha256 "7e97de2843fd0c1026dc19bf59e91b8a60c397d6bb2895d587c121001ac6b5a4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.5/linux-arm64/polytoken.tar.gz"
    sha256 "c4981758e85834ba8a4d2b7595c55189bae37c1903869d9362e6b498e4ef0e22"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/unstable/0.5.0-unstable.5/linux-amd64/polytoken.tar.gz"
    sha256 "8135381e906ba270f68d09006373181d652a136b393b42b02c5cb372e373b716"
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
