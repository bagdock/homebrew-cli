class Bagdock < Formula
  desc "Bagdock developer CLI — build, test, and deploy apps and edges"
  homepage "https://github.com/bagdock/bagdock-cli"
  url "https://registry.npmjs.org/@bagdock/cli/-/cli-0.10.1.tgz"
  version "0.10.1"
  sha256 "fdf25a427dadc5e8d6b085a7961a45ae857c93b049a00ca8113e2348c1c73bde"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/bagdock"
  end

  test do
    assert_match "0.10.1", shell_output("#{bin}/bagdock --version")
  end
end
