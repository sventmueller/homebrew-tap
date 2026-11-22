cask "dango" do
  version "0.3.1"
  sha256 "f4e9a9e41cd6d29c8e015a58f5a0cee301ed7683035b464bf2ba0a52f9caa523"

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
