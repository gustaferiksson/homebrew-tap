cask "monotext" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/monotext on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.6"
  sha256 "ca76dbf8be9514c567a692d91de3c66f9d60bc5ea358c961de718818a8644aee"

  url "https://github.com/gustaferiksson/monotext/releases/download/v#{version}/MonoText-#{version}.zip"
  name "MonoText"
  desc "Document-based macOS plain-text editor with a multi-cursor editor"
  homepage "https://github.com/gustaferiksson/monotext"

  depends_on macos: :tahoe

  app "MonoText.app"

  zap trash: "~/Library/Preferences/dev.gustaf.monotext.plist"
end
