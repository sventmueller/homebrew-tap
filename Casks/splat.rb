cask "splat" do
  version "1.0.2"
  sha256 "5926959641e1c9d877019ebef1dd6b0c5f8bb0fc25d1f12a0efac1c1517d310a"

  url "https://github.com/sventmueller/splat/releases/download/v#{version}/Splat-#{version}.dmg"
  name "Splat"
  desc "Markdown editor with a live, editable preview"
  homepage "https://github.com/sventmueller/splat"

  livecheck do
    url :url
    strategy :github_latest
  end

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
