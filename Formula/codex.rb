class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.123.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.123.0/codex-0.123.0-aarch64-apple-darwin.tar.gz"
      sha256 "6f162a9410ee4058f8c02f0a3444fa6c9cef6f4b51feb758cc91e582458da999"
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
