class Shellpilot < Formula
  desc "ShellPilot — governance, JIT credentials and audit trail for AI-agent CLIs"
  homepage "https://github.com/devicai/shellpilot"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.11.0/shellpilot_0.11.0_darwin_arm64.tar.gz"
      sha256 "a28fe9a6469b9d88f8bba1eea6d05c09af12161d5cd3700aa1d563c9bf2a2ed6"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.11.0/shellpilot_0.11.0_darwin_amd64.tar.gz"
      sha256 "68bf34ab53783dfeec2316f0af3c4258e592195cb50e4e7cb064086b6722e2d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.11.0/shellpilot_0.11.0_linux_arm64.tar.gz"
      sha256 "7d5e7f765cf0351a915c4fbbbcc01d7a9bde21e4791af2a964cb4d7bb4c4d12a"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.11.0/shellpilot_0.11.0_linux_amd64.tar.gz"
      sha256 "d1869f4d3fcb939d020eb512448ddf31248ac01c8535baea31e176eaaa6a1a01"
    end
  end

  def install
    bin.install "shellpilot"
  end

  test do
    assert_match "0.11.0", shell_output("#{bin}/shellpilot version")
  end
end
