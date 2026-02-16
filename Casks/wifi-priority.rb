cask "wifi-priority" do
  version "0.4.5"
  sha256 "b4c320beafa0fe2b2904a6aae1d27fe1a58074b8b6636d9736dd4910d2ba2a51"

  url "https://github.com/dhruv-anand-aintech/wifi-priority-tui/releases/download/v#{version}/WiFiPrioritySwiftUI-#{version}.zip"
  name "WiFi Priority"
  desc "Native macOS app to manage WiFi network priorities with drag-and-drop"
  homepage "https://github.com/dhruv-anand-aintech/wifi-priority-tui"

  app "WiFiPrioritySwiftUI.app"

  zap trash: "~/Library/Preferences/com.dhruvanandintech.wifipriority.plist"
end
