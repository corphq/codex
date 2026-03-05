class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.110.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.110.0/codex-0.110.0-aarch64-apple-darwin.tar.gz"
      sha256 "97707e576b0521ef8621d68e3e52025d484eb92b62053c0212f4132367e5a6eb"
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
