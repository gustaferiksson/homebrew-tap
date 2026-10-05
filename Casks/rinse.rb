cask "rinse" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/rinse on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.1"
  sha256 "35f08d611d9e1280f68618fb26981e3bc275ccbf6dcdc0320b691f7ac93528b5"

  url "https://github.com/gustaferiksson/rinse/releases/download/v#{version}/Rinse-#{version}.zip"
  name "Rinse"
  desc "Menu bar app that clears formatting from copied text"
  homepage "https://github.com/gustaferiksson/rinse"

  auto_updates true
  depends_on macos: :tahoe

  app "Rinse.app"

  zap trash: [
    "~/Library/Containers/dev.gustaf.Rinse.RinseControl",
    "~/Library/Group Containers/82K3YC8HVF.dev.gustaf.rinse",
    "~/Library/Preferences/dev.gustaf.Rinse.plist",
  ]
end
