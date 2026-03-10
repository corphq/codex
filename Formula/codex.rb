class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.113.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.113.0/codex-0.113.0-aarch64-apple-darwin.tar.gz"
      sha256 "c24c9b1de2106f8105c58e7777c3a3a093893887d89c1761b246c7edf9ca156e"
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
