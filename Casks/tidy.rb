cask "tidy" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/tidy on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.9"
  sha256 "0646a7b334e5fde5cbbe7d00bcd33c7ca4cab0bf57d16f270edc7950109b6043"

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
