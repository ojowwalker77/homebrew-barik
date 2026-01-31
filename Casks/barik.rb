cask "barik" do
  version "0.6.0-rc4"
  sha256 "cb991d19e7001e13cf3b78635784b7039cdb0b177ecb00db550aa12a3c7a4a2f"

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
