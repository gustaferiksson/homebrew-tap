class Spaces < Formula
  desc "Instant Ctrl+arrow switching between macOS Spaces"
  homepage "https://github.com/gustaferiksson/spaces"
  url "https://github.com/gustaferiksson/spaces/releases/download/v0.4.0/spaces-0.4.0.zip"
  sha256 "43c79ee238dbf5c62c4a18992c542dc6d4acf62a626304dc17ae96dfe78f4208"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "spaces"
  end

  post_install_steps do
    run "spaces", args: ["install-icon"], base: :bin
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
