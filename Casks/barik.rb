cask "barik" do
  version "0.6.2"
  sha256 "623495db8bd21db8e2ba49fcf11398131f2ecac7a3383db41bc2c6e452037c73"

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
