cask "berth" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/berth on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.39"
  sha256 "0011214719a283ca102db0036b49f70e2165ab892f1f57f5fc1ad060a7608d32"

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
