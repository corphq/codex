class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.137.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.137.0/codex-0.137.0-aarch64-apple-darwin.tar.gz"
      sha256 "1d5187d1e009ddf192c08065117d2afdc41f02577588055389c2ff801827a179"
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
