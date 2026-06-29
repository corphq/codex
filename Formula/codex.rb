class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.142.4"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.142.4/codex-0.142.4-aarch64-apple-darwin.tar.gz"
      sha256 "060a7eba5ecba6977f32988465c2f969dbdf64c2df2b62e47eb16d98640e4607"
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
