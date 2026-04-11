class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.119.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.119.0/codex-0.119.0-aarch64-apple-darwin.tar.gz"
      sha256 "4f949ff8e9b3d4f2804a8ab88e6f36d9b047a8277d5fb29a06140f48e7133289"
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
