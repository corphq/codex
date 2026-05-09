class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.130.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.130.0/codex-0.130.0-aarch64-apple-darwin.tar.gz"
      sha256 "fbff6076243d9ad0c203fe20afda926266f2a297ddba66611250781b826c9fc7"
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
