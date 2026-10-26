class Pressmark < Formula
  desc "High-performance vector PDF document synthesis engine and MCP server"
  homepage "https://pressmark.dev"
  version "1.2.1"
  license "MIT"

  depends_on "typst"

  on_macos do
    on_arm do
      url "https://github.com/mooshee/pressmark/releases/download/v1.2.1/pressmark-v1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "43a7cd76509c0a57f7f84489df40d111ac1bce9c55081e30cd92858e893bcc17"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mooshee/pressmark/releases/download/v1.2.1/pressmark-v1.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86cf0eb10c398f1b266c0384be3b715bf866909afc7ac966fa792442e3244754"
    end
  end

  def install
    bin.install "pressmark"
  end

  test do
    assert_predicate bin/"pressmark", :exist?
  end
end
