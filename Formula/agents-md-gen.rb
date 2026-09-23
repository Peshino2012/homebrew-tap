class AgentsMdGen < Formula
  desc "Generate a solid AGENTS.md/CLAUDE.md for any repo"
  homepage "https://www.npmjs.com/package/agents-md-gen"
  url "https://registry.npmjs.org/agents-md-gen/-/agents-md-gen-0.13.0.tgz"
  sha256 "4748b74ad22c1285a5994d5718d7320e9768b2e65effc1a52a0961dbe8d9d4d9"
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
