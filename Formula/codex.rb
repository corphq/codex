class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.112.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.112.0/codex-0.112.0-aarch64-apple-darwin.tar.gz"
      sha256 "3c28e27d4ce98ca1edc975b8747355ab93a430069c79671066e305e8388cf35b"
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
