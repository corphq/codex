class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.144.3"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.144.3/codex-0.144.3-aarch64-apple-darwin.tar.gz"
      sha256 "a7e4b2549af39685a5dd533af758262e36999ee0d01800d63f55194a6ed71aaa"
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
