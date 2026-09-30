class Anc < Formula
  desc "Switch AirPods noise control from the terminal"
  homepage "https://github.com/gustaferiksson/anc"
  url "https://github.com/gustaferiksson/anc/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d9ff19fa56edaaf4c8453ff499d4f2eb6fda8e7863c4da52be450b341b620c26"
  license "MIT"

  depends_on :macos

  def install
    system "/usr/bin/swiftc", "-O", "anc.swift", "-o", "anc"
    bin.install "anc"
  end

  test do
    assert_match "usage: anc", shell_output("#{bin}/anc bogus 2>&1", 1..2)
  end
end
