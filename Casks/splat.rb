cask "splat" do
  version "1.0.7"
  sha256 "a76b460f7575c9003423db706272488ba0c4c1599853685f37fbca543247fb47"

  url "https://github.com/sventmueller/splat/releases/download/v#{version}/Splat-#{version}.dmg"
  name "Splat"
  desc "Markdown editor with a live, editable preview"
  homepage "https://github.com/sventmueller/splat"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
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
