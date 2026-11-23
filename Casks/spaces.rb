cask "spaces" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/spaces on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.6.2"
  sha256 "2df79e9b7d3762a81497944f1af812c16cc07063737903643d61fd2a77518353"

  url "https://github.com/gustaferiksson/spaces/releases/download/v#{version}/Spaces-#{version}.zip"
  name "Spaces"
  desc "Menu bar app for instant Space switching and window snapping"
  homepage "https://github.com/gustaferiksson/spaces"

  auto_updates true
  depends_on macos: :golden_gate

  app "Spaces.app"

  zap trash: "~/Library/Preferences/dev.gustaf.Spaces.plist"
end
