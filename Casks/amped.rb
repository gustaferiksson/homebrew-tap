cask "amped" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/amped on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.3.0"
  sha256 "f7843e8e5f34f70c963dfb7ea0316e2d0f9b4b98d9e03dcf21f8d4ea3a9fe3fe"

  url "https://github.com/gustaferiksson/amped/releases/download/v#{version}/Amped-#{version}.zip"
  name "Amped"
  desc "Menu bar app that keeps your Mac awake, even with the lid closed"
  homepage "https://github.com/gustaferiksson/amped"

  depends_on macos: :tahoe

  app "Amped.app"

  zap trash: "~/Library/Preferences/dev.gustaf.Amped.plist"
end
