cask "dango" do
  version "1.0.3"
  sha256 "f9210afb80375fe8183f2fc3dc566f25e7add3946a231d12f3f4c17a716bda29"

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
