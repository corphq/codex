class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.144.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.144.0/codex-0.144.0-aarch64-apple-darwin.tar.gz"
      sha256 "54309aeeda7599dcf3723de835933dfb037c183ac39b23867576853b52a49505"
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
