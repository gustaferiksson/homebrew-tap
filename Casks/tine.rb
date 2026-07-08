cask "tine" do
  version "0.1.9"
  sha256 "16a7a1451486938a2f8c1f28f605df148c294be615a19b4e9925d516a7db29b9"

  url "https://github.com/gustaferiksson/tine/releases/download/v#{version}/Tine-#{version}.dmg"
  name "Tine"
  desc "Native macOS terminal autocomplete"
  homepage "https://github.com/gustaferiksson/tine"

  app "Tine.app"

  caveats <<~EOS
    Finish setup:
      echo 'source ~/.local/share/tine/tine.zsh' >> ~/.zshrc
    Then grant Accessibility: System Settings → Privacy & Security → Accessibility.
    Tine is signed but not notarized — on first launch, right-click the app → Open.
  EOS
end
