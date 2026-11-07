cask "lowspeak" do
  version "1.0.1"
  sha256 "a50ab540455cac49ffe7ef9cc0342d07ddbed507ba758d6f14401ee12ed43ddd"

  url "https://github.com/sventmueller/lowspeak/releases/download/v#{version}/Lowspeak-#{version}.dmg"
  name "Lowspeak"
  desc "Menu bar dictation: hold fn, speak, release"
  homepage "https://github.com/sventmueller/lowspeak"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Lowspeak.app"

  # Application Support/Lowspeak may also hold a developer's local signing identity, so only Lowspeak's own files go.
  zap trash: [
        "~/Library/Application Support/Lowspeak/*.log*",
        "~/Library/Application Support/Lowspeak/Models",
        "~/Library/Caches/com.lowspeak.app",
        "~/Library/HTTPStorages/com.lowspeak.app",
        "~/Library/Preferences/com.lowspeak.app.plist",
      ],
      rmdir: "~/Library/Application Support/Lowspeak"
end
