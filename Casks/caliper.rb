cask "caliper" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/caliper on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.1.2"
  sha256 "78154a92e0a75dd2c51d86c08c17837e0447b5924017b77b0179361440734c3b"

  url "https://github.com/gustaferiksson/caliper/releases/download/v#{version}/Caliper-#{version}.zip"
  name "Caliper"
  desc "Measure real-world distances on images and PDFs"
  homepage "https://github.com/gustaferiksson/caliper"

  depends_on macos: :tahoe

  app "Caliper.app"

  zap trash: "~/Library/Preferences/dev.gustaf.caliper.plist"
end
