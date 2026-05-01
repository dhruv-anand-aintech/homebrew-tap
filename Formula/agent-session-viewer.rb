class AgentSessionViewer < Formula
  desc "Live multi-platform AI coding session viewer (Claude Code, Cursor, Codex, OpenCode, Hermes)"
  homepage "https://github.com/dhruv-anand-aintech/agent-session-viewer"
  url "https://registry.npmjs.org/agent-session-viewer/-/agent-session-viewer-0.1.6.tgz"
  # Update sha256 after first npm publish: `brew fetch --build-from-source agent-session-viewer`
  sha256 "dc5d7e69ed3f719f3685bc42bda0b2683eaf8e05d546b85f46881787b10ccf26"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "--production", "--ignore-scripts"
    bin.install "bin/agent-session-viewer.mjs" => "agent-session-viewer"
    # Install all runtime files
    libexec.install "local-server.mjs", "build-cache.mjs", "setup-local.mjs",
                    "shared-utils.mjs", "platform-readers.mjs", "package.json"
    libexec.install "dist", "lib", "node_modules"
    # Rewrite bin to use libexec paths
    bin.write_exec_script libexec/"bin/agent-session-viewer.mjs"
  end

  def caveats
    <<~EOS
      To start Agent Session Viewer:
        agent-session-viewer

      To bind to all interfaces (LAN / phone access):
        agent-session-viewer --host

      To auto-open the browser:
        agent-session-viewer --open
    EOS
  end

  test do
    assert_predicate bin/"agent-session-viewer", :exist?
  end
end
