class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.102.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.102.0/codex-0.102.0-aarch64-apple-darwin.tar.gz"
      sha256 "5853765132e0b88973496920fcc1a2859dd611597c075a5dc45816b01e030c15"
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
