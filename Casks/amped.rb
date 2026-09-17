cask "amped" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/amped on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.0"
  sha256 "2d2b2784fc2e83bc0001e48a737cda71a4f88e57e435365f374f4649ad9fac2a"

  url "https://github.com/gustaferiksson/amped/releases/download/v#{version}/Amped-#{version}.zip"
  name "Amped"
  desc "Menu bar app that keeps your Mac awake, even with the lid closed"
  homepage "https://github.com/gustaferiksson/amped"

  depends_on macos: :sonoma

  app "Amped.app"

  zap trash: "~/Library/Preferences/dev.gustaf.Amped.plist"
end
