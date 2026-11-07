cask "tidy" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/tidy on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.16"
  sha256 "faa2bcd2693c609c57d003dfe4ee6d1b3c7d4153f74aa5eba8575d1050ac13f1"

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
