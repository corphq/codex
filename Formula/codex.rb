class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.104.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.104.0/codex-0.104.0-aarch64-apple-darwin.tar.gz"
      sha256 "1c4a05bc6c15bd4ad72380d9662ca95a289e74b256c0a8e36154388a772fea0c"
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
