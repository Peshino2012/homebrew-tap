class AgentsMdGen < Formula
  desc "Generate a solid AGENTS.md/CLAUDE.md for any repo"
  homepage "https://www.npmjs.com/package/agents-md-gen"
  url "https://registry.npmjs.org/agents-md-gen/-/agents-md-gen-0.9.1.tgz"
  sha256 "a0eaee9b5584905ab43cb4d2a9816fd568f8096a135e1f54a849d319238b1392"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "agents-md-gen", shell_output("#{bin}/agents-md-gen --help")
  end
end
