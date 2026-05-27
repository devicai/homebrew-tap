class DevicCliWrapper < Formula
  desc "ShellPilot — governance, JIT credentials and audit trail for AI-agent CLIs"
  homepage "https://github.com/devicai/shellpilot"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.4.0/devic-cli-wrapper_0.4.0_darwin_arm64.tar.gz"
      sha256 "ac78a8eea28a1e3fc12ccd27d4cdbe084604c857f2572d01d3a9bcf5ab5736bd"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.4.0/devic-cli-wrapper_0.4.0_darwin_amd64.tar.gz"
      sha256 "e7afb14d21715a0ab60d9a940f6cc1e30877b45006b808178f6310bfed7e5089"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.4.0/devic-cli-wrapper_0.4.0_linux_arm64.tar.gz"
      sha256 "a376bc93ff764b440cf854f49bf0e44f787fac5721f79be56c2b04d058e3edc8"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.4.0/devic-cli-wrapper_0.4.0_linux_amd64.tar.gz"
      sha256 "9d61330f5f97e391f6bf34e3c80a664fdf1a4192c690e1aae034b718e8e4b316"
    end
  end

  def install
    bin.install "devic-cli-wrapper"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/devic-cli-wrapper version")
  end
end
