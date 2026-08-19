class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.148.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.148.0/codex-0.148.0-aarch64-apple-darwin.tar.gz"
      sha256 "62d5d5549e69c164a76f2d896bfca84622fe99191cb1727b2a15f49d644a180e"
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
