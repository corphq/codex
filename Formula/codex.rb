class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.144.4"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.144.4/codex-0.144.4-aarch64-apple-darwin.tar.gz"
      sha256 "070a3a411799ecb3705a78434a318f9b858e94988bde56b9af3ee44534fa6c0a"
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
