cask "tapa" do
  version "1.0.3"
  sha256 "0536fbfa9cea52fd04263ad174b997adc1f8e07ef4f392ca9e9b8eb6a4081c65"

  url "https://github.com/sventmueller/tapa/releases/download/v#{version}/Tapa-#{version}.dmg"
  name "Tapa"
  desc "Fast, native terminal with workspaces and agents"
  homepage "https://github.com/sventmueller/tapa"

  livecheck do
    url "https://github.com/sventmueller/tapa/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Tapa.app"

  zap trash: [
    "~/Library/Application Scripts/com.muellermails.terminal.decoder",
    "~/Library/Application Support/com.muellermails.terminal",
    "~/Library/Caches/com.muellermails.terminal",
    "~/Library/Containers/com.muellermails.terminal.decoder",
    "~/Library/HTTPStorages/com.muellermails.terminal",
    "~/Library/HTTPStorages/com.muellermails.terminal.binarycookies",
    "~/Library/Logs/com.muellermails.terminal",
    "~/Library/Preferences/com.muellermails.terminal.plist",
    "~/Library/Saved Application State/com.muellermails.terminal.savedState",
    "~/Library/WebKit/com.muellermails.terminal",
  ]
end
