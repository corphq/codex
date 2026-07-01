class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.142.5"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.142.5/codex-0.142.5-aarch64-apple-darwin.tar.gz"
      sha256 "c3b480a75c87698daae23e0fbd768a51a53f6370adc265638f8dbe2f6b38c7fc"
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
