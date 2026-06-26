class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.142.3"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.142.3/codex-0.142.3-aarch64-apple-darwin.tar.gz"
      sha256 "39d56b7ec3df0f572fcdd8def9025750bcc4400d10e00056f6697610660dd61e"
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
