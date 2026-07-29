class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.146.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.146.0/codex-0.146.0-aarch64-apple-darwin.tar.gz"
      sha256 "c119f5adca7697dbeec7bed15f295bac9921181e605e1fd095db7f24f1f6680a"
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
