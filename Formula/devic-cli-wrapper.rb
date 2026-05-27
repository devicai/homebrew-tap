class DevicCliWrapper < Formula
  desc "ShellPilot — governance, JIT credentials and audit trail for AI-agent CLIs"
  homepage "https://github.com/devicai/shellpilot"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.5.0/devic-cli-wrapper_0.5.0_darwin_arm64.tar.gz"
      sha256 "3b26e66e637a93602aab30e4cf3275dcb5aba866eee5b3973f05c1b4233bc22f"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.5.0/devic-cli-wrapper_0.5.0_darwin_amd64.tar.gz"
      sha256 "09032042c152f37a6f85feeb12169a2bb382800aeb883dba5e1ee83d2a9d3619"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.5.0/devic-cli-wrapper_0.5.0_linux_arm64.tar.gz"
      sha256 "4c363a221152b0d243892317244713d48f117dd962bc2293c65a10934abfbd90"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.5.0/devic-cli-wrapper_0.5.0_linux_amd64.tar.gz"
      sha256 "296064ed800983a23eadcc6c0d19e69c5552cb3ca146cd53901422dc300af670"
    end
  end

  def install
    bin.install "devic-cli-wrapper"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/devic-cli-wrapper version")
  end
end
