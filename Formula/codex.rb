class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.128.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.128.0/codex-0.128.0-aarch64-apple-darwin.tar.gz"
      sha256 "85ac737d228b32ec1fd984b0674190899d26b5c3d43bac20389a861abdd6d7be"
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
