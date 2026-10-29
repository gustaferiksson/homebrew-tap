cask "berth" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/berth on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.8"
  sha256 "9dcee44f394190b490565d0de6a474ce83e8f6ab30b18138772cfdfcc5d9deaf"

  url "https://github.com/gustaferiksson/berth/releases/download/v#{version}/Berth-#{version}.zip"
  name "Berth"
  desc "Terminal with a sidebar of Claude Code sessions grouped by project"
  homepage "https://github.com/gustaferiksson/berth"

  auto_updates true
  depends_on macos: :tahoe

  app "Berth.app"

  zap trash: [
    "~/Library/Caches/dev.gustaf.berth",
    "~/Library/HTTPStorages/dev.gustaf.berth",
    "~/Library/Preferences/dev.gustaf.berth.plist",
  ]
end
