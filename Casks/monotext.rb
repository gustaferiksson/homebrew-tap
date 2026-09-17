cask "monotext" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/monotext on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.0"
  sha256 "0685164c200504bacc761e5b0a531604570844af0d9e250585ea326d6824aba4"

  url "https://github.com/gustaferiksson/monotext/releases/download/v#{version}/MonoText-#{version}.zip"
  name "MonoText"
  desc "Document-based macOS plain-text editor with a multi-cursor editor"
  homepage "https://github.com/gustaferiksson/monotext"

  depends_on macos: ">= :tahoe"

  app "MonoText.app"

  zap trash: "~/Library/Preferences/dev.gustaf.monotext.plist"
end
