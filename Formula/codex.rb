class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.114.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.114.0/codex-0.114.0-aarch64-apple-darwin.tar.gz"
      sha256 "57428e4c2a0026894dbd40dff01b52e582258dde23b8ea4117da4d2baf26b25a"
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
