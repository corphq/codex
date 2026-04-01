class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.118.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.118.0/codex-0.118.0-aarch64-apple-darwin.tar.gz"
      sha256 "16c5d8d059a9f61adffbee462f212776bdc6ccdbee15589641d5bc0d53464ef0"
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
