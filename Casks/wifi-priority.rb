cask "wifi-priority" do
  version "0.5.0"
  sha256 "33fe66c687b0b9bd68875e051dc3993494a49d5b451b8c412f4dc212e6a3e1dc"

  url "https://github.com/dhruv-anand-aintech/wifi-priority-tui/releases/download/v#{version}/WiFiPrioritySwiftUI-#{version}.zip"
  name "WiFi Priority"
  desc "Native macOS app to manage WiFi network priorities with drag-and-drop"
  homepage "https://github.com/dhruv-anand-aintech/wifi-priority-tui"

  app "build/WiFiPrioritySwiftUI.app", target: "/Applications/WiFi Priority.app"

  zap trash: [
    "~/Library/Preferences/com.dhruvanandintech.wifipriority.plist",
    "/Applications/WiFi Priority.app",
  ]
end
