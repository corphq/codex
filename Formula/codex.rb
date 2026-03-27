class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.117.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.117.0/codex-0.117.0-aarch64-apple-darwin.tar.gz"
      sha256 "899120febf349bdd8ad70697e7f414e9079915a930e862eaff916de6e4baee88"
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
