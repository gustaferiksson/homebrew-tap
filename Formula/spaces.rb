class Spaces < Formula
  desc "Instant Ctrl+arrow switching between macOS Spaces"
  homepage "https://github.com/gustaferiksson/spaces"
  url "https://github.com/gustaferiksson/spaces/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "9273c047c24e5907c54a2606fee47883c6c4720274fcfc409007ef1565f4b65f"
  license "MIT"

  depends_on :macos

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/spaces"
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
