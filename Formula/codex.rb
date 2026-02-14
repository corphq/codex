class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.0.0"

  on_macos do
    on_arm do
      url "https://github.com/REPLACE_ME/REPLACE_ME/releases/download/0.0.0/codex-0.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_ME"
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
