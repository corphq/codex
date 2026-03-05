class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.111.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.111.0/codex-0.111.0-aarch64-apple-darwin.tar.gz"
      sha256 "d1b9e1a63f572a59883da6e98940152aeb20263324bcb95bad347649b03e276b"
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
