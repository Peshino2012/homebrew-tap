class AgentsMdGen < Formula
  desc "Generate a solid AGENTS.md/CLAUDE.md for any repo"
  homepage "https://github.com/Peshino2012/PD1"
  url "https://registry.npmjs.org/agents-md-gen/-/agents-md-gen-0.4.1.tgz"
  sha256 "38dbc0cbe3817202d70c8f95d9589455844ccad44a07ecb85a3494c601523908"
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
