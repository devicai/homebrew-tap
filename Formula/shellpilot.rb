class Shellpilot < Formula
  desc "ShellPilot — governance, JIT credentials and audit trail for AI-agent CLIs"
  homepage "https://github.com/devicai/shellpilot"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.9.0/shellpilot_0.9.0_darwin_arm64.tar.gz"
      sha256 "2a2bfe2bb0fd7ba1988346f87225991ffc2180f0b486941e03e7fbf99bdd2fa8"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.9.0/shellpilot_0.9.0_darwin_amd64.tar.gz"
      sha256 "c3bc29645ae45f9e674e4a32d5c2833dc294b1b12561540c8f6a34378c6fd0ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.9.0/shellpilot_0.9.0_linux_arm64.tar.gz"
      sha256 "afe369b0a07a2b4c34ed1329e2b3dfeaad221397ebde2e7bdb1a46251f19b118"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.9.0/shellpilot_0.9.0_linux_amd64.tar.gz"
      sha256 "a833c77d388a66b08ed2ad12c88e4bb5da15b6873e3a1f877df258ce350a520b"
    end
  end

  def install
    bin.install "shellpilot"
  end

  test do
    assert_match "0.9.0", shell_output("#{bin}/shellpilot version")
  end
end
