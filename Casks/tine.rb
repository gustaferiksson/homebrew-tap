cask "tine" do
  version "0.1.8"
  sha256 "21e043a98b45265f0a9a8444abf45d91b36521ec87e08800e02234b99536bc2d"

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
