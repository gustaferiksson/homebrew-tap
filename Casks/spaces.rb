cask "spaces" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/spaces on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.5.0"
  sha256 "fa8b8d595a7e97761811a23a6b4eca20cd419dd5c06dd537388c525cac878170"

  url "https://github.com/gustaferiksson/spaces/releases/download/v#{version}/Spaces-#{version}.zip"
  name "Spaces"
  desc "Menu bar app for instant Space switching and window snapping"
  homepage "https://github.com/gustaferiksson/spaces"

  auto_updates true
  depends_on macos: :golden_gate

  app "Spaces.app"

  zap trash: "~/Library/Preferences/dev.gustaf.Spaces.plist"
end
