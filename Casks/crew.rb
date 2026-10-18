cask "crew" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/crew on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.20"
  sha256 "99e6bbd5cc9a73646ce3d682f9e9c23267947a21e897fce7dac1ff402c41ffda"

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
