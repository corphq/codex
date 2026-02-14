class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.101.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.101.0/codex-0.101.0-aarch64-apple-darwin.tar.gz"
      sha256 "24e2a929c1a0dc6fa40cace3ccd8a78d602727ba278ef03bd93bf708d16166da"
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
