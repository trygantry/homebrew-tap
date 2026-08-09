class Gantry < Formula
  desc "Local-first mobile release governance CLI"
  homepage "https://gantryapp.com/"
  version "0.5.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/trygantry/gantry/releases/download/v#{version}/gantry-macos-aarch64"
    sha256 "81df19e0355e7e46bb0aff0bb32171267107a07403c09064774c4a847f9e4164"
  elsif OS.mac?
    url "https://github.com/trygantry/gantry/releases/download/v#{version}/gantry-macos-x86_64"
    sha256 "7a2bb20afad47939b1bd797a4e427cd19d1186d677accc75fc1aeb44e966e986"
  else
    url "https://github.com/trygantry/gantry/releases/download/v#{version}/gantry-linux-x86_64"
    sha256 "baa81dc977ccad890ea1fc6de4f612849e4f970343bb9c8033a8f59077eb4242"
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
