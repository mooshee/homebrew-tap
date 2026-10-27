class Pressmark < Formula
  desc "High-performance vector PDF document engine & MCP server for invoices, contracts, and 50-state statutory leases"
  homepage "https://pressmark.dev"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mooshee/pressmark/releases/download/v1.2.1/pressmark-v1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "b9e74567719ea6b17799a2e436fd3f1e02a4e8e9b942b1883c9a5a6a08f4c04d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mooshee/pressmark/releases/download/v1.2.1/pressmark-v1.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "242fba387cdc70e858bf970ddf5cb4eb71b323b8195f17f5f9e5874568579dbe"
    end
  end

  def install
    bin.install "pressmark"
  end

  test do
    assert_predicate bin/"pressmark", :exist?
  end
end
