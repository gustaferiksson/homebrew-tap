cask "tape" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/tape on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.4.5"
  sha256 "3bf99fb57d3e686ac56d378af851994f265d1da135bb310c4f5f147669835d5a"

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
