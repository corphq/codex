class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.122.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.122.0/codex-0.122.0-aarch64-apple-darwin.tar.gz"
      sha256 "3817f8f3bec7a8b2912200fb33c91b0168997480c284049dc899356a3dfd5da9"
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
