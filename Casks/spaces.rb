cask "spaces" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/spaces on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.5.1"
  sha256 "a26e7829e654d29b1f66cb6664151b47db15836bf81bc5994046598de7065b8e"

  url "https://github.com/gustaferiksson/spaces/releases/download/v#{version}/Spaces-#{version}.zip"
  name "Spaces"
  desc "Menu bar app for instant Space switching and window snapping"
  homepage "https://github.com/gustaferiksson/spaces"

  auto_updates true
  depends_on macos: :golden_gate

  app "Spaces.app"

  zap trash: "~/Library/Preferences/dev.gustaf.Spaces.plist"
end
