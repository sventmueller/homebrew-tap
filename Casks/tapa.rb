cask "tapa" do
  version "0.1.0"
  sha256 "c3bae4ada69d38bc2b8d9534a041a6e5c6f2f7c1bbe8306a67a4de184a1f0da0"

  url "https://github.com/sventmueller/tapa/releases/download/v#{version}/Tapa-#{version}.zip"
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
