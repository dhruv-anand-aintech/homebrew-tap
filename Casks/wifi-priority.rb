cask "wifi-priority" do
  version "0.5.0"
  sha256 "9b9c772f7fac67073b9b3c8235d4a6b359218262c94d67c96ec21bfe2c6ed397"

  url "https://github.com/dhruv-anand-aintech/wifi-priority-tui/releases/download/v#{version}/WiFiPrioritySwiftUI-#{version}.zip"
  name "WiFi Priority"
  desc "Native macOS app to manage WiFi network priorities with drag-and-drop"
  homepage "https://github.com/dhruv-anand-aintech/wifi-priority-tui"

  app "WiFiPrioritySwiftUI.app", target: "/Applications/WiFi Priority.app"

  zap trash: [
    "~/Library/Preferences/com.dhruvanandintech.wifipriority.plist",
    "/Applications/WiFi Priority.app",
  ]
end
