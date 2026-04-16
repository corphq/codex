class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.121.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.121.0/codex-0.121.0-aarch64-apple-darwin.tar.gz"
      sha256 "1104e1458abd7a66183d3c63f166477c30008fa23f1f2457115e2bef7792158b"
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
