class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.138.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.138.0/codex-0.138.0-aarch64-apple-darwin.tar.gz"
      sha256 "fdb5f5a27524f783a7fa5d9719e3021bcd3d55c78a3be8c0af7bbdb4dc5e14b4"
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
