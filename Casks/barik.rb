cask "barik" do
  version "0.6.0"
  sha256 "PLACEHOLDER"

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
