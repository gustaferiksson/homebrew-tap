class Anc < Formula
  desc "Switch AirPods noise control from the terminal"
  homepage "https://github.com/gustaferiksson/anc"
  url "https://github.com/gustaferiksson/anc/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "d421bf2817bb6082e1da397fdc6f35eb06616888bee4783ddd448b8049fdb496"
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
