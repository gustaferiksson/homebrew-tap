cask "tape" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/tape on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.4.2"
  sha256 "7d807116a19a95f1b2f41e6cb015bb9698665c0acefbad08a9d20db73afa114a"

  url "https://github.com/gustaferiksson/tape/releases/download/v#{version}/Tape-#{version}.zip"
  name "Tape"
  desc "Menu bar app that records system audio and your microphone"
  homepage "https://github.com/gustaferiksson/tape"

  auto_updates true
  depends_on macos: :tahoe

  app "Tape.app"

  zap trash: [
    "~/Library/Caches/dev.gustaf.tape",
    "~/Library/HTTPStorages/dev.gustaf.tape",
    "~/Library/Preferences/dev.gustaf.tape.plist",
  ]
end
