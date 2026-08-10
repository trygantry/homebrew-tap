class Gantry < Formula
  desc "Local-first mobile release governance CLI"
  homepage "https://gantryapp.com/"
  version "0.5.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/trygantry/gantry/releases/download/v#{version}/gantry-macos-aarch64"
    sha256 "5e866d956920ed8824103d74075e3489971ebb4f5c6d87aaa4102f59b9cf0466"
  elsif OS.mac?
    url "https://github.com/trygantry/gantry/releases/download/v#{version}/gantry-macos-x86_64"
    sha256 "53cd709ad2135a853264f6e905fd794acd52d41323470751a3f9756749ffe57f"
  else
    url "https://github.com/trygantry/gantry/releases/download/v#{version}/gantry-linux-x86_64"
    sha256 "fae04564a7da30b8e62eb3478be50ed77c7ae5a60f9cdfe52714d2c16e334448"
  end

  def install
    binary = Dir["gantry-*"].first
    odie "Gantry release binary was not found" unless binary

    bin.install binary => "gantry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gantry --version")
  end
end
