class WifiPriorityTui < Formula
  include Language::Python::Virtualenv

  desc "Interactive terminal UI for managing macOS WiFi network priorities"
  homepage "https://github.com/dhruv-anand-aintech/wifi-priority-tui"
  url "https://files.pythonhosted.org/packages/source/w/wifi-priority-tui/wifi_priority_tui-0.5.1.tar.gz"
  sha256 "1ecc74dc8cc0174646d7c10b4460efc9ee2dbd1577b38a863bcb9b3702bbad6b"
  license "MIT"

  depends_on "python@3.11"

  # Only Textual (main dependency); pip will resolve transitive deps
  resource "textual" do
    url "https://files.pythonhosted.org/packages/source/t/textual/textual-0.47.1.tar.gz"
    sha256 "4b82e317884bb1092f693f474c319ceb068b5a0b128b121f1aa53a2d48b4b80c"
  end

  def python3
    "python3.11"
  end

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
