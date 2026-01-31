cask "barik" do
  version "0.6.1"
  sha256 "6cc4d589b572b71586196c4d45a03d880de96ea7fb92c591367a57be48e1d213"

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
