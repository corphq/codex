class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.143.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.143.0/codex-0.143.0-aarch64-apple-darwin.tar.gz"
      sha256 "1f2de897f8af6a4a727fe7c563b0f68b080130b13fcc82101f5035592162b192"
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
