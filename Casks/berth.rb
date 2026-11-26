cask "berth" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/berth on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.195"
  sha256 "ff1a8f569bf14ebd12ced0098fc94800318b56d8a58483a1828f4faef8302d54"

  url "https://github.com/gustaferiksson/berth/releases/download/v#{version}/Berth-#{version}.zip"
  name "Berth"
  desc "Terminal with a sidebar of Claude Code sessions grouped by project"
  homepage "https://github.com/gustaferiksson/berth"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Berth.app"

  zap trash: [
    "~/Library/Caches/dev.gustaf.berth",
    "~/Library/HTTPStorages/dev.gustaf.berth",
    "~/Library/Preferences/dev.gustaf.berth.plist",
  ]
end
