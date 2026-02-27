class Codex < Formula
  desc "OpenAI Codex CLI"
  homepage "https://github.com/openai/codex"
  version "0.106.0"

  on_macos do
    on_arm do
      url "https://github.com/corphq/codex/releases/download/0.106.0/codex-0.106.0-aarch64-apple-darwin.tar.gz"
      sha256 "0d5f7dc26dab441a1b4ff2e113e70d5f0bbce9c016035b336b65ddbdd122cc5c"
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
