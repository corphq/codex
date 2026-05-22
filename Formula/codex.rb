class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.133.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.133.0/codex-0.133.0-aarch64-apple-darwin.tar.gz"
      sha256 "9d42e23e53ff42fc33eaf8efa1473931189f69b1e6efb884c465ed5cc68f808c"
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
