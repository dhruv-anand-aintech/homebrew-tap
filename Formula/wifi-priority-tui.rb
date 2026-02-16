class WifiPriorityTui < Formula
  include Language::Python::Virtualenv

  desc "Interactive terminal UI for managing macOS WiFi network priorities"
  homepage "https://github.com/dhruv-anand-aintech/wifi-priority-tui"
  url "https://files.pythonhosted.org/packages/py3/w/wifi_priority_tui/wifi_priority_tui-0.4.9-py3-none-any.whl"
  sha256 "d7b27bd86acc4568b7ab641cfcbec51f7b04c4665acc4b6b14fcb02a795f5a58"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      This app requires sudo to modify network settings.
      Run with: sudo wifi-priority

      For the native macOS app with drag-and-drop interface:
        brew install --cask dhruv-anand-aintech/tap/wifi-priority
    EOS
  end

  test do
    # Test that the command exists and shows help
    system "#{bin}/wifi-priority", "--version"
  end
end
