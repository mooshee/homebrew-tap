class Pressmark < Formula
  desc "High-performance vector PDF document synthesis engine and MCP server"
  homepage "https://pressmark.dev"
  version "1.2.1"
  license "MIT"

  depends_on "typst"

  on_macos do
    on_arm do
      url "https://github.com/mooshee/pressmark/releases/download/v1.2.1/pressmark-v1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "c10ed63097ed93817c1d332a79e09d22dd4f9643250c95c48e8ab07739ac9f56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mooshee/pressmark/releases/download/v1.2.1/pressmark-v1.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7315e0842754cf20da6ef267c0951eb08c887f2b001da091ef6dbfad9f985e27"
    end
  end

  def install
    bin.install "pressmark"
  end

  test do
    assert_predicate bin/"pressmark", :exist?
  end
end
