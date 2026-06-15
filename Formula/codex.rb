class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.140.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.140.0/codex-0.140.0-aarch64-apple-darwin.tar.gz"
      sha256 "a398805ecea70a4e8a41e763f1174f8e10ce032c9f4b22feddf8a9b4f2e0f0d2"
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
