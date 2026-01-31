cask "barik" do
  version "0.6.1"
  sha256 "bd728495438ffb3a6d48899b35cb5135e503ea7fd4ada05f35b5846026b840dc"

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
