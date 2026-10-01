cask "monotext" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/monotext on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.2.3"
  sha256 "13325f4a451edd730a67667e79bacdf8d1894703990faef5c5ad6a722501cb04"

  url "https://github.com/gustaferiksson/monotext/releases/download/v#{version}/MonoText-#{version}.zip"
  name "MonoText"
  desc "Document-based macOS plain-text editor with a multi-cursor editor"
  homepage "https://github.com/gustaferiksson/monotext"

  depends_on macos: :tahoe

  app "MonoText.app"

  zap trash: "~/Library/Preferences/dev.gustaf.monotext.plist"
end
