class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.144.5"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.144.5/codex-0.144.5-aarch64-apple-darwin.tar.gz"
      sha256 "40bec9211de05ba75b6e178f0fb91f767ec977fcaabf8e99c5d4dad02b0180e4"
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
