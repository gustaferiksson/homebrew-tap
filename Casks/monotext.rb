cask "monotext" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/monotext on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.3"
  sha256 "ae692d5d45cee0801d1527a9e3a2f3304b9dacba092387c6fb9d37dc5a207cd8"

  url "https://github.com/gustaferiksson/monotext/releases/download/v#{version}/MonoText-#{version}.zip"
  name "MonoText"
  desc "Document-based macOS plain-text editor with a multi-cursor editor"
  homepage "https://github.com/gustaferiksson/monotext"

  depends_on macos: :tahoe

  app "MonoText.app"

  zap trash: "~/Library/Preferences/dev.gustaf.monotext.plist"
end
