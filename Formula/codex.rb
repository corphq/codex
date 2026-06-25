class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.142.2"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.142.2/codex-0.142.2-aarch64-apple-darwin.tar.gz"
      sha256 "1a54af0fe382185f6b036053a6266fda16c9ec9e7ffe1e10fcf1aab07d8a4d31"
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
