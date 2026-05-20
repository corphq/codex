class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.132.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.132.0/codex-0.132.0-aarch64-apple-darwin.tar.gz"
      sha256 "aca473f4ffd49683ebac73b4e2a9039d9a7155d0108799f4852b277bf23b147c"
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
