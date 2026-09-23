class AgentsMdGen < Formula
  desc "Generate a solid AGENTS.md/CLAUDE.md for any repo"
  homepage "https://www.npmjs.com/package/agents-md-gen"
  url "https://registry.npmjs.org/agents-md-gen/-/agents-md-gen-0.12.0.tgz"
  sha256 "44883fd521ddde0a99f75c3bd7040868b61b05915de777999463b678c26f3c82"
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
