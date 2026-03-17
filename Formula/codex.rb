class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.115.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.115.0/codex-0.115.0-aarch64-apple-darwin.tar.gz"
      sha256 "eb4a6cf60fa38fd40a07620b69208e387f7e3c920e563d15a171868624e861dd"
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
