cask "easysnaps-window-manager" do
  version "1.6.0"
  sha256 :no_check

  url "https://easysnaps.org/downloads/EasySnapsWindowManager.dmg"
  name "EasySnaps Window Manager"
  desc "Window manager for macOS with custom snap zones and smart profiles"
  homepage "https://easysnaps.org"

  livecheck do
    url "https://easysnaps.org/appcast/wm.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "EasySnaps Window Manager.app"

  zap trash: [
    "~/Library/Application Support/com.easysnaps.windowmanager",
    "~/Library/Preferences/com.easysnaps.windowmanager.plist",
    "~/Library/Caches/com.easysnaps.windowmanager",
    "~/Library/Saved Application State/com.easysnaps.windowmanager.savedState",
  ]
end
