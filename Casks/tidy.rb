cask "tidy" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/tidy on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.7"
  sha256 "dd4ed7b0fc614d7c88efae2e2bb842e875b36f580246bbc11aed04fd399f8fa7"

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
