cask "tape" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/tape on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.4.7"
  sha256 "bac6f6ee3151614fccf2ef6d399fc3f09825d7a36194c07a56f0b2c06562f188"

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
