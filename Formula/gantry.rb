class Gantry < Formula
  desc "Local-first mobile release governance CLI"
  homepage "https://gantryapp.com/"
  version "0.5.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/trygantry/gantry/releases/download/v#{version}/gantry-macos-aarch64"
    sha256 "b5fdbbf5cc24890ddfc8db9c26e4cf0ec01584f32a68532140228ae762b8aac6"
  elsif OS.mac?
    url "https://github.com/trygantry/gantry/releases/download/v#{version}/gantry-macos-x86_64"
    sha256 "e2da84c977098103fd697b022aadd4fc768feee54bf25687dbaaaf8e6867df7f"
  else
    url "https://github.com/trygantry/gantry/releases/download/v#{version}/gantry-linux-x86_64"
    sha256 "ca9357c70f0a8c669026cc73657967af4571b17487a6c306d9d767f88acd08c3"
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
