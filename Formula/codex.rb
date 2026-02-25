class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.105.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.105.0/codex-0.105.0-aarch64-apple-darwin.tar.gz"
      sha256 "d88403dd4c155230809fbd2acbd6d19392323d46b649ec5d7110bd2b19b0137c"
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
