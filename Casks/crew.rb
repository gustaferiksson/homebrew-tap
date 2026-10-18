cask "crew" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/crew on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.25"
  sha256 "f3059aac2482f191971c9efccad4758522fd3e46432f29d2fe147a9d84f3355a"

  url "https://github.com/gustaferiksson/crew/releases/download/v#{version}/Crew-#{version}.zip"
  name "Crew"
  desc "Native client for Hermes Agent bots"
  homepage "https://github.com/gustaferiksson/crew"

  auto_updates true
  depends_on macos: :golden_gate

  app "Crew.app"

  zap trash: [
    "~/Library/Application Support/Crew",
    "~/Library/Caches/dev.gustaf.crew",
    "~/Library/Preferences/dev.gustaf.crew.plist",
  ]
end
