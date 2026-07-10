class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.144.1"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.144.1/codex-0.144.1-aarch64-apple-darwin.tar.gz"
      sha256 "6bac12bf6647ea7cc66cb960817fd32cdd56e750ce65e57c501e9345a1989298"
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
