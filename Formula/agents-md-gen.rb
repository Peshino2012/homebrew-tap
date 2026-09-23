class AgentsMdGen < Formula
  desc "Generate a solid AGENTS.md/CLAUDE.md for any repo"
  homepage "https://www.npmjs.com/package/agents-md-gen"
  url "https://registry.npmjs.org/agents-md-gen/-/agents-md-gen-0.11.0.tgz"
  sha256 "1255cb74bf1c3036b8e5e3ead4319d7e490f5068c672b5c03f562ee62fcd1d2e"
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
