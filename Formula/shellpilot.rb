class Shellpilot < Formula
  desc "ShellPilot — governance, JIT credentials and audit trail for AI-agent CLIs"
  homepage "https://github.com/devicai/shellpilot"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.8.0/shellpilot_0.8.0_darwin_arm64.tar.gz"
      sha256 "f4aecc8c38ecdbc866c8d5d6bcb64dc9c2acf7e308bb90a385d9ef16040b290f"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.8.0/shellpilot_0.8.0_darwin_amd64.tar.gz"
      sha256 "f3fe8a754126a8a20be49a10cba30d6a72156bf58190f3c2dce52fb8d3a9e587"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.8.0/shellpilot_0.8.0_linux_arm64.tar.gz"
      sha256 "39473f890dcee68a82f002d175c14da85037a6e61bcf69cc3037863c57549f35"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.8.0/shellpilot_0.8.0_linux_amd64.tar.gz"
      sha256 "42ac213aa96ec9d3780faceef30b52fca58c90062f2f24f6302960c31e183a9e"
    end
  end

  def install
    bin.install "shellpilot"
  end

  test do
    assert_match "0.8.0", shell_output("#{bin}/shellpilot version")
  end
end
