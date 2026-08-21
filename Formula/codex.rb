class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.149.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.149.0/codex-0.149.0-aarch64-apple-darwin.tar.gz"
      sha256 "e6618d0f27dc6127ff6c729e476703cc6d54abe23034bfdea1059e3e3bd3440a"
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
