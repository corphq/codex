class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.139.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.139.0/codex-0.139.0-aarch64-apple-darwin.tar.gz"
      sha256 "68e7efd08916a5f49cca5ee6fa59b2c19cd087191415f63efc8f71b73e9ade32"
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
