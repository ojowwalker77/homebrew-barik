cask "barik" do
  version "0.6.1"
  sha256 "6f6479b65f84180a26ad39d1b080583f60000de4028b3ce0f5b208aed8bab608"

  url "https://github.com/ojowwalker77/barik/releases/download/v#{version}/Barik.zip"
  name "Barik"
  desc "Lightweight macOS menu bar replacement for tiling WM users"
  homepage "https://github.com/ojowwalker77/barik"

  depends_on macos: ">= :sequoia"

  livecheck do
    url :url
    strategy :github_latest
  end

  postflight do
    system "xattr", "-d", "com.apple.quarantine", "#{staged_path}/Barik.app"
  end

  app "Barik.app"

  zap trash: [
    "~/.barik-config.toml",
    "~/.config/barik",
  ]
end
