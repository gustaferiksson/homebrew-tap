class Spaces < Formula
  desc "Instant Ctrl+arrow switching between macOS Spaces"
  homepage "https://github.com/gustaferiksson/spaces"
  url "https://github.com/gustaferiksson/spaces/releases/download/v0.3.0/spaces-0.3.0.zip"
  sha256 "e4465f85769b19c2f2cacda63d968520fc1e06f8d16e01392c6432a70f467bb1"
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
