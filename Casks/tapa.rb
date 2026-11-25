cask "tapa" do
  version "1.0.1"
  sha256 "035334ee3d5a7ddd9c4c2eda24880a5f3d494cb95198bab8c181bfeafe21a33a"

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
