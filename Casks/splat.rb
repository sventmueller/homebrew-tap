cask "splat" do
  version "1.0.3"
  sha256 "135008ab55d486bb4eedf1fcac98fcee16e5f970c175dbab3f01abe01a35bb39"

  url "https://github.com/sventmueller/splat/releases/download/v#{version}/Splat-#{version}.dmg"
  name "Splat"
  desc "Markdown editor with a live, editable preview"
  homepage "https://github.com/sventmueller/splat"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Splat.app"

  zap trash: [
    "~/Library/Application Support/Splat",
    "~/Library/Caches/local.splat",
    "~/Library/HTTPStorages/local.splat",
    "~/Library/Preferences/local.splat.plist",
    "~/Library/Saved Application State/local.splat.savedState",
    "~/Library/WebKit/local.splat",
  ]
end
