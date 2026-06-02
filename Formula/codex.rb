class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.136.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.136.0/codex-0.136.0-aarch64-apple-darwin.tar.gz"
      sha256 "e43b281e010433bdddebe7f00cd97740b26bcb679663899c66bc1b4ae2a8cfc0"
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
