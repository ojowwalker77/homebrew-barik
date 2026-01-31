cask "barik" do
  version "0.6.0-rc5"
  sha256 "fb0b9567210d015daa253d81ba1ba7474adc71e7015ede92ad0521b73ddbd0ff"

  url "https://github.com/ojowwalker77/barik/releases/download/v#{version}/Barik.zip"
  name "Barik"
  desc "Lightweight macOS menu bar replacement for tiling WM users"
  homepage "https://github.com/ojowwalker77/barik"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Barik.app"

  zap trash: [
    "~/.barik-config.toml",
    "~/.config/barik",
  ]
end
