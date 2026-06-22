class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.142.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.142.0/codex-0.142.0-aarch64-apple-darwin.tar.gz"
      sha256 "558dc95fa03e80dfc3b6ac7e3047fc2c1ab422fea72a4431535dcffb0e77e4c7"
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
