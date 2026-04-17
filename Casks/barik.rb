cask "barik" do
  version "0.6.3"
  sha256 "22c13fa4a736e198aae02a24d0da806e460f841c7e23e8f9d7f77a92fac7c27c"

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
