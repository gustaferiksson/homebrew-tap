cask "tine" do
  version "0.1.14"
  sha256 "b5e34e5bdbaf85027996baa490dfcbaf72c97b30c4ed1f299179b42c20aa9b0b"

  url "https://github.com/gustaferiksson/tine/releases/download/v#{version}/Tine-#{version}.dmg"
  name "Tine"
  desc "Native macOS terminal autocomplete"
  homepage "https://github.com/gustaferiksson/tine"

  app "Tine.app"

  caveats <<~EOS
    Finish setup:
      echo 'source ~/.local/share/tine/tine.zsh' >> ~/.zshrc
    Then grant Accessibility: System Settings → Privacy & Security → Accessibility.
  EOS
end
