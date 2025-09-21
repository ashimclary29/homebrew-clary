class Clary < Formula
  desc "CLI for managing semantic models in Clary"
  homepage "https://github.com/ashimclary29/clary"
  url "https://github.com/ashimclary29/clary/releases/download/v0.2.3/clary-cli-darwin-amd64.tar.gz"
  sha256 "PLACEHOLDER_SHA256"
  license "MIT"
  version "0.2.3"

  if Hardware::CPU.intel?
    url "https://github.com/ashimclary29/clary/releases/download/v0.2.3/clary-cli-darwin-amd64.tar.gz"
    sha256 "PLACEHOLDER_SHA256_INTEL"
  else
    url "https://github.com/ashimclary29/clary/releases/download/v0.2.3/clary-cli-darwin-arm64.tar.gz"
    sha256 "PLACEHOLDER_SHA256_ARM64"
  end

  def install
    bin.install "clary-cli" => "clary"
  end

  test do
    system "#{bin}/clary", "--version"
  end
end
