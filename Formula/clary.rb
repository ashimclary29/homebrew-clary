class Clary < Formula
  desc "CLI for managing semantic models in Clary"
  homepage "https://github.com/claryai/clary"
  url "https://github.com/claryai/clary/archive/v0.2.3.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  version "0.2.3"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "clary-cli"
    bin.install "target/release/clary-cli" => "clary"
  end

  test do
    system "#{bin}/clary", "--version"
  end
end
