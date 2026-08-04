class Shellpilot < Formula
  desc "ShellPilot — governance, JIT credentials and audit trail for AI-agent CLIs"
  homepage "https://github.com/devicai/shellpilot"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.10.0/shellpilot_0.10.0_darwin_arm64.tar.gz"
      sha256 "ead739f750395c0508be62a3f8c6b3c327152594a0f65f737c136de67fedb8fb"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.10.0/shellpilot_0.10.0_darwin_amd64.tar.gz"
      sha256 "1463540d86c3fcfb633e32d47d7bce8c2d6404f40bc452ba9d07e0a3730f179a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.10.0/shellpilot_0.10.0_linux_arm64.tar.gz"
      sha256 "9e7e98d5503d7b9cc5b163ba632ac166ae146136147b1825fad4468643d3b770"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.10.0/shellpilot_0.10.0_linux_amd64.tar.gz"
      sha256 "2c4cb55eeb423a4d0bfb321497ca3b16197df171f7c3edec60335c369da91847"
    end
  end

  def install
    bin.install "shellpilot"
  end

  test do
    assert_match "0.10.0", shell_output("#{bin}/shellpilot version")
  end
end
