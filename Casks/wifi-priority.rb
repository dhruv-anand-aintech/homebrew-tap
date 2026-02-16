cask "wifi-priority" do
  version "0.4.9"
  sha256 "771e32b2fe4083a2ba3ced60fd6c3ece5d81006c4470d352eef7a1d249edf1aa"

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
