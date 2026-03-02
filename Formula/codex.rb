class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.107.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.107.0/codex-0.107.0-aarch64-apple-darwin.tar.gz"
      sha256 "9a5337153ac23dc8fbdefa4bc67c399a50450075673ef17d185932db37862c7f"
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
