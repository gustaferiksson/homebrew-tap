cask "caliper" do
  # version + sha256 are bumped automatically by the release workflow in
  # github.com/gustaferiksson/caliper on each tagged release. The placeholders
  # below are replaced on the first `git tag v… && git push`.
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/gustaferiksson/caliper/releases/download/v#{version}/Caliper-#{version}.zip"
  name "Caliper"
  desc "Measure real-world distances on images and PDFs"
  homepage "https://github.com/gustaferiksson/caliper"

  depends_on macos: ">= :tahoe"

  app "Caliper.app"

  zap trash: "~/Library/Preferences/dev.gustaf.caliper.plist"
end
