cask "amped" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/amped on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.3.7"
  sha256 "4b7ff1d592647436a062e886825488f01db7558408247777be2f893251eec525"

  url "https://github.com/gustaferiksson/amped/releases/download/v#{version}/Amped-#{version}.zip"
  name "Amped"
  desc "Menu bar app that keeps your Mac awake, even with the lid closed"
  homepage "https://github.com/gustaferiksson/amped"

  depends_on macos: :tahoe

  app "Amped.app"

  zap trash: "~/Library/Preferences/dev.gustaf.Amped.plist"
end
