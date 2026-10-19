cask "tidy" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/tidy on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.6"
  sha256 "b692cc5d44de84875a987bbaec608b3251b7de94cd492b74d67daabea9bd7972"

  url "https://github.com/gustaferiksson/tidy/releases/download/v#{version}/Tidy-#{version}.zip"
  name "Tidy"
  desc "Menu bar inbox for GitHub notifications"
  homepage "https://github.com/gustaferiksson/tidy"

  auto_updates true
  depends_on macos: :tahoe

  app "Tidy.app"

  zap trash: [
    "~/Library/Application Support/dev.gustaf.Tidy",
    "~/Library/Caches/dev.gustaf.Tidy",
    "~/Library/Preferences/dev.gustaf.Tidy.plist",
  ]
end
