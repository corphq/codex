class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.146.1"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.146.1/codex-0.146.1-aarch64-apple-darwin.tar.gz"
      sha256 "2d0fc72c7ae0cdfe1a61ea8e7c89f4970834fcba3755d99284f9188f3c93f1b0"
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
