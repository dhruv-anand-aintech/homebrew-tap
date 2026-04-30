cask "wifi-priority" do
  version "0.5.1"
  sha256 "4f7f55398ba87117f3710d198c89c94227b143098c2228db9f6bc30a7499012d"

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
