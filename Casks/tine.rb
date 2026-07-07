cask "tine" do
  version "0.1.4"
  sha256 "2a1d6a80aca50b3cddc3aaff20a89d84d029c7090df4eeae42d190fb87b94cd7"

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
