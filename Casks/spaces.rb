cask "spaces" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/spaces on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.6.0"
  sha256 "f8601d95b38f9e56094e17bfbc6bc723a6e6a2edbc09fb960223b7b5fe91f63d"

  url "https://github.com/gustaferiksson/spaces/releases/download/v#{version}/Spaces-#{version}.zip"
  name "Spaces"
  desc "Menu bar app for instant Space switching and window snapping"
  homepage "https://github.com/gustaferiksson/spaces"

  auto_updates true
  depends_on macos: :golden_gate

  app "Spaces.app"

  zap trash: "~/Library/Preferences/dev.gustaf.Spaces.plist"
end
