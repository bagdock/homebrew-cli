class Bagdock < Formula
  desc "Bagdock developer CLI — build, test, and deploy apps and edges"
  homepage "https://github.com/bagdock/bagdock-cli"
  url "https://registry.npmjs.org/@bagdock/cli/-/cli-0.4.0.tgz"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/bagdock"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/bagdock --version")
  end
end
