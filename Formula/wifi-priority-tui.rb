class WifiPriorityTui < Formula
  include Language::Python::Virtualenv

  desc "Interactive terminal UI for managing macOS WiFi network priorities"
  homepage "https://github.com/dhruv-anand-aintech/wifi-priority-tui"
  url "https://files.pythonhosted.org/packages/source/w/wifi-priority-tui/wifi_priority_tui-0.4.9.tar.gz"
  sha256 "ef2ab8e18a9f0b112552fc2b8b6c5d0f84d3b8f49b27dbca6cd961687d1d40e5"
  license "MIT"

  depends_on "python@3.11"

  resource "textual" do
    url "https://files.pythonhosted.org/packages/source/t/textual/textual-0.47.1.tar.gz"
    sha256 "4b82e317884bb1092f693f474c319ceb068b5a0b128b121f1aa53a2d48b4b80c"
  end

  # Add all textual dependencies
  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/source/m/markdown-it-py/markdown_it_py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/source/m/mdurl/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/source/p/pygments/pygments-2.17.2.tar.gz"
    sha256 "da46cec9fd2de5be3a8a784f434e4c4ab670b4ff54d605c4c2717e9d49c4c367"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-13.7.0.tar.gz"
    sha256 "5cb5123b5cf9ee70584244246816e9114227e0b98ad9176eede6ad54bf5403fa"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/source/t/typing-extensions/typing_extensions-4.9.0.tar.gz"
    sha256 "23478f88c37f27d76ac8aee6c905017a143b0b1b886c3c9f66bc2fd94f9f5783"
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
