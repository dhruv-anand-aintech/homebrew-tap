class WifiPriorityTui < Formula
  include Language::Python::Virtualenv

  desc "Interactive terminal UI for managing macOS WiFi network priorities"
  homepage "https://github.com/dhruv-anand-aintech/wifi-priority-tui"
  url "https://files.pythonhosted.org/packages/source/w/wifi-priority-tui/wifi_priority_tui-0.4.9.tar.gz"
  sha256 "ef2ab8e18a9f0b112552fc2b8b6c5d0f84d3b8f49b27dbca6cd961687d1d40e5"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install_and_link buildpath
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
