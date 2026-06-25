class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.142.1"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.142.1/codex-0.142.1-aarch64-apple-darwin.tar.gz"
      sha256 "31159d553e7fb0758c58ec0e9d00f7089fcd8d6ffe21a47984cf868bc6e27900"
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
