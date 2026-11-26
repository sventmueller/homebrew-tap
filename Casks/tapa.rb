cask "tapa" do
  version "1.0.9"
  sha256 "c7bed2b8bdd14d70a4a5355b7f32d51fa2801b3bad143ec9f39be0c3734aed22"

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
