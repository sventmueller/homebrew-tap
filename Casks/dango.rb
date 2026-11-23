cask "dango" do
  version "0.3.4"
  sha256 "e21a4713ce8196a9ebdcbc54f850dfaf90b0c4845ebb6c793671d64c71a53781"

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
