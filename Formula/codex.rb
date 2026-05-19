class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.131.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.131.0/codex-0.131.0-aarch64-apple-darwin.tar.gz"
      sha256 "fd9936ee612d702abd13e4b3b8ef71615a380dfae015f39e0dcbbfce5cb84ec6"
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
