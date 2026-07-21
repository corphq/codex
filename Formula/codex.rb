class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.145.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.145.0/codex-0.145.0-aarch64-apple-darwin.tar.gz"
      sha256 "6d685087c4c341b03851df8724c3d3e686ed78342a5f65756d318cf345051cc0"
    end
    on_intel do
      odie "codex is only available for Apple Silicon."
    end
  end

  def install
    bin.install "codex"
  end

  test do
    system "#{bin}/codex", "--help"
  end
end
