class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.125.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.125.0/codex-0.125.0-aarch64-apple-darwin.tar.gz"
      sha256 "f600acd7e666a152ca7dcffa7a2a818d00a8c20c88a8090100e336422b9a130e"
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
