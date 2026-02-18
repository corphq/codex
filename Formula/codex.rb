class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.103.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.103.0/codex-0.103.0-aarch64-apple-darwin.tar.gz"
      sha256 "12c922fa8962bd0d2186c9ce1c5790dc052afa4cccd964145058707844f30fbd"
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
