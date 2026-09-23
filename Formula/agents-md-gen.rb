class AgentsMdGen < Formula
  desc "Generate a solid AGENTS.md/CLAUDE.md for any repo"
  homepage "https://www.npmjs.com/package/agents-md-gen"
  url "https://registry.npmjs.org/agents-md-gen/-/agents-md-gen-0.8.0.tgz"
  sha256 "667a770866126bd60c2912d85b357145131b84fd3ae7d57fe1644cc65bd07044"
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
