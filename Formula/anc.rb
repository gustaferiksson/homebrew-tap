class Anc < Formula
  desc "Switch AirPods noise control from the terminal"
  homepage "https://github.com/gustaferiksson/anc"
  url "https://github.com/gustaferiksson/anc/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "c5d83e9a8deffc289fc79b8e4428ebf18c725882879b874b5473bc1e4efabe46"
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
