cask "monotext" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/monotext on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.2.1"
  sha256 "984a6a88f4ed721eaaca649851a76ffc5ef3530b3ab7070671acc8ab9eedfb5a"

  url "https://github.com/gustaferiksson/monotext/releases/download/v#{version}/MonoText-#{version}.zip"
  name "MonoText"
  desc "Document-based macOS plain-text editor with a multi-cursor editor"
  homepage "https://github.com/gustaferiksson/monotext"

  depends_on macos: :tahoe

  app "MonoText.app"

  zap trash: "~/Library/Preferences/dev.gustaf.monotext.plist"
end
