class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.141.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.141.0/codex-0.141.0-aarch64-apple-darwin.tar.gz"
      sha256 "9794a808cbe57de963c3b3d208f02175bbfee142572be9da1cb0af63429a5942"
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
