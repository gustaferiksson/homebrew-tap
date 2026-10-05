cask "amped" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/amped on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.3.2"
  sha256 "25a55ffa1b2ffbf57c205cdef6ee421b3c33ef758e82e01e9cae6cff83d7899b"

  url "https://github.com/gustaferiksson/amped/releases/download/v#{version}/Amped-#{version}.zip"
  name "Amped"
  desc "Menu bar app that keeps your Mac awake, even with the lid closed"
  homepage "https://github.com/gustaferiksson/amped"

  depends_on macos: :tahoe

  app "Amped.app"

  zap trash: "~/Library/Preferences/dev.gustaf.Amped.plist"
end
