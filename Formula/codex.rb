class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.101.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.101.0/codex-0.101.0-aarch64-apple-darwin.tar.gz"
      sha256 "2e78658005fc72b6102d2fb01b43f029bc7c9c983626ce89f376aa8c226f7d35"
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
