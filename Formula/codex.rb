class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.147.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.147.0/codex-0.147.0-aarch64-apple-darwin.tar.gz"
      sha256 "f01cf905aa48b077dc3fcb2fe87cd7110340d42dff4286b104fd3d5f17d6d518"
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
