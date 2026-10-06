cask "spaces" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/spaces on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "1.0.0"
  sha256 "563ff42ec19ed190393573de9f1bbdd170a92d07d41dedd62585bf245fc9f99a"

  url "https://github.com/gustaferiksson/spaces/releases/download/v#{version}/Spaces-#{version}.zip"
  name "Spaces"
  desc "Menu bar app for instant Space switching and window snapping"
  homepage "https://github.com/gustaferiksson/spaces"

  auto_updates true
  depends_on macos: :golden_gate

  app "Spaces.app"

  zap trash: "~/Library/Preferences/dev.gustaf.Spaces.plist"
end
