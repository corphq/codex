class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.144.6"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.144.6/codex-0.144.6-aarch64-apple-darwin.tar.gz"
      sha256 "578ef6159b9f0cf808234f8ad512ef4783f358a666b44a93143917019b23ee62"
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
