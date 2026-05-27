class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.134.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.134.0/codex-0.134.0-aarch64-apple-darwin.tar.gz"
      sha256 "888a838aa4d0f446ab2bd8095bdd2c82fcdc71c79493c6f513608ecf14f874b4"
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
