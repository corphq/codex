class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.116.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.116.0/codex-0.116.0-aarch64-apple-darwin.tar.gz"
      sha256 "4deadc60be324755656b7fea3b845b7af6ba289a13014896cfd0594a2042959b"
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
