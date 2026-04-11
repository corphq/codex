class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.120.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.120.0/codex-0.120.0-aarch64-apple-darwin.tar.gz"
      sha256 "7444315f129f8d963f15a917bce77ca97de74316985b578c0363c8b05652fb34"
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
