class Pressmark < Formula
  desc "High-performance vector PDF document engine & MCP server for invoices, contracts, and 50-state statutory leases"
  homepage "https://pressmark.dev"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mooshee/pressmark/releases/download/v1.4.0/pressmark-v1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "b5a728903631864e10fa057e9a606c49409bb4d4b49836330ea89f13d70c8881"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mooshee/pressmark/releases/download/v1.4.0/pressmark-v1.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c8bf9b2fe65bede14bdd5aa1b582ec8d4a08cba23b250d9785592d0e3a68e17"
    end
  end

  def install
    bin.install "pressmark"
  end

  test do
    assert_predicate bin/"pressmark", :exist?
  end
end
