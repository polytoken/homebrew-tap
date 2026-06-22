class Polytoken < Formula
  desc "AI agent harness"
  homepage "https://polytoken.dev"
  version "0.3.1"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.3.1/macos-arm64/polytoken.tar.gz"
    sha256 "ae714f3267d17f3392c4910c7403f955ee1d8f93bd4de32386daa6c3ed7a58aa"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.3.1/macos-amd64/polytoken.tar.gz"
    sha256 "0646fa97222bac842b04b1ce88900113e8e9ea36b6d6e5013a62bf5e0e9ddf76"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://dl.polytoken.dev/0.3.1/linux-arm64/polytoken.tar.gz"
    sha256 "6aeba5d92dbe88aad888321a60678f9fa8da214f10ce04fde64e0a5c72d11938"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://dl.polytoken.dev/0.3.1/linux-amd64/polytoken.tar.gz"
    sha256 "29cadb8f3db121504182e514ce93d47d236f71d107544b9725f6c24ff0e45e89"
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
