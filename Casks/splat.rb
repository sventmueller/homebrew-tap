cask "splat" do
  version "1.0.18"
  sha256 "8449018eed699afd714feebb4264acacc755fb5ca76adc8e3a1beca068600c5b"

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
    "~/Library/Application Scripts/local.splat",
    "~/Library/Application Scripts/local.splat.decoder",
    "~/Library/Application Support/Splat",
    "~/Library/Caches/local.splat",
    "~/Library/Containers/local.splat",
    "~/Library/Containers/local.splat.decoder",
    "~/Library/HTTPStorages/local.splat",
    "~/Library/Preferences/local.splat.plist",
    "~/Library/Saved Application State/local.splat.savedState",
    "~/Library/WebKit/local.splat",
  ]
end
