class Anc < Formula
  desc "Switch AirPods noise control from the terminal"
  homepage "https://github.com/gustaferiksson/anc"
  url "https://github.com/gustaferiksson/anc/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "09c61e07c4aa63c336cce240167d34669a29a5e0a4eae5dea4f2c712948a9a97"
  license "MIT"

  depends_on :macos

  def install
    system "/usr/bin/swiftc", "-O", "anc.swift", "-o", "anc"
    bin.install "anc"
  end

  test do
    assert_match(/usage: anc|no connected device/, shell_output("#{bin}/anc bogus 2>&1 || true"))
  end
end
