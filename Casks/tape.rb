cask "tape" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/tape on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.3.0"
  sha256 "58f21bd6308736627056e3a0da3988d8eac5674b8740f8c301061b52c9c448b9"

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
