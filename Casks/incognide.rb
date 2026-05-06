cask "incognide" do
  version "0.1.32"
  sha256 "03fb9ecf64e01d4b28b6903eb4f07800efb461770a9209fa77d37384251ae8ed"

  url "https://github.com/NPC-Worldwide/incognide/releases/download/v#{version}/incognide_#{version}_arm64.dmg"
  name "Incognide"
  desc "Desktop app for private AI interactions"
  homepage "https://github.com/NPC-Worldwide/incognide"

  app "Incognide.app"
end
