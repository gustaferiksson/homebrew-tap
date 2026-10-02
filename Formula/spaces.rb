class Spaces < Formula
  desc "Instant Ctrl+arrow switching between macOS Spaces"
  homepage "https://github.com/gustaferiksson/spaces"
  url "https://github.com/gustaferiksson/spaces/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "35383b5428d3ba3ffb05b430e7b69105fbfa0593f8bd3238654d69e679052b16"
  license "MIT"

  depends_on :macos

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/spaces"
  end

  service do
    run [opt_bin/"spaces", "daemon"]
    keep_alive true
    log_path var/"log/spaces.log"
    error_log_path var/"log/spaces.log"
  end

  test do
    assert_match "usage: spaces", shell_output("#{bin}/spaces bogus 2>&1", 2)
  end
end
