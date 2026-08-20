cask "nintendo-music-rpc" do
  version "1.3.0"

  on_arm do
    url "https://github.com/Bentheminernz/Nintendo-Music-RPC/releases/download/#{version}/Nintendo-Music-RPC-#{version}-arm64.dmg"
    sha256 "38276b98b6f52847d2cb931031de19c701e1c86624055f5a99cce4b62137db17"
  end

  on_intel do
    url "https://github.com/Bentheminernz/Nintendo-Music-RPC/releases/download/#{version}/Nintendo-Music-RPC-#{version}.dmg"
    sha256 "c19ef5b7a435ae1b7e7efc626c6f4fcb512cbae766f063366a4b05683e97c856"
  end

  name "Nintendo Music RPC"
  desc "Discord Rich Presence bridge and Last.fm scrobbler for Nintendo Music"
  homepage "https://github.com/bentheminernz/nintendo-music-rpc"

  livecheck do
    url "https://github.com/Bentheminernz/Nintendo-Music-RPC/releases"
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Nintendo Music RPC.app"

  zap trash: [
    "~/Library/Application Support/Nintendo Music RPC",
    "~/Library/Preferences/nz.benlawrence.nintendo-music-rpc-bridge.plist"
  ]
end
