cask "dango" do
  version "0.3.3"
  sha256 "c0f9a018dbf25829fc6f3820f1150bce0aa78fc614aa41414ce093582da9af6c"

  url "https://github.com/sventmueller/dango/releases/download/v#{version}/Dango-#{version}.dmg"
  name "Dango"
  desc "Editor for working with coding agents"
  homepage "https://github.com/sventmueller/dango"

  livecheck do
    url "https://github.com/sventmueller/dango/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Dango.app"

  zap trash: [
    "~/Library/Application Support/local.agentide",
    "~/Library/Caches/local.agentide",
    "~/Library/HTTPStorages/local.agentide",
    "~/Library/Logs/local.agentide",
    "~/Library/Preferences/local.agentide.plist",
    "~/Library/Saved Application State/local.agentide.savedState",
    "~/Library/WebKit/local.agentide",
  ]
end
