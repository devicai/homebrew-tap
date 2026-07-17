class Shellpilot < Formula
  desc "ShellPilot — governance, JIT credentials and audit trail for AI-agent CLIs"
  homepage "https://github.com/devicai/shellpilot"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.7.0/shellpilot_0.7.0_darwin_arm64.tar.gz"
      sha256 "b6f40b36c760475e734496757f658b3bd6ee9302c0f055937ebe37f8317951f6"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.7.0/shellpilot_0.7.0_darwin_amd64.tar.gz"
      sha256 "17798a09560f4d95fbda4830b2aa1e249429aab9982df9dbee88dd82e277d012"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.7.0/shellpilot_0.7.0_linux_arm64.tar.gz"
      sha256 "20462d6744c11eac5cf09851a5764892c25b48fae490eaa2844801f859850612"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.7.0/shellpilot_0.7.0_linux_amd64.tar.gz"
      sha256 "d7e8234d37e307374e35123b81c8f506497887e6cb536e1d48de2ee6a507a720"
    end
  end

  def install
    bin.install "shellpilot"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/shellpilot version")
  end
end
