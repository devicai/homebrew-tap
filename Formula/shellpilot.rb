class Shellpilot < Formula
  desc "ShellPilot — governance, JIT credentials and audit trail for AI-agent CLIs"
  homepage "https://github.com/devicai/shellpilot"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.12.0/shellpilot_0.12.0_darwin_arm64.tar.gz"
      sha256 "7bca625a20078ed66ec936788ac86d9792b97784e29a2eef352f99d8ce56b063"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.12.0/shellpilot_0.12.0_darwin_amd64.tar.gz"
      sha256 "6a9a6ac7a0552fb6c28c7211a52f7be2e5bb64d38d1dbc7fedd689bc18e4e095"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.12.0/shellpilot_0.12.0_linux_arm64.tar.gz"
      sha256 "2aff3f56871d48bc111afe7cf7ebc068d57108b2cc18c821da30171fe6089342"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.12.0/shellpilot_0.12.0_linux_amd64.tar.gz"
      sha256 "0413667e8ab25b26179132f7e1f261422dae3663d3bf6ebb6b80f57b779a6dec"
    end
  end

  def install
    bin.install "shellpilot"
  end

  test do
    assert_match "0.12.0", shell_output("#{bin}/shellpilot version")
  end
end
