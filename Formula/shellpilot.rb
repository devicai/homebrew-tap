class Shellpilot < Formula
  desc "ShellPilot — governance, JIT credentials and audit trail for AI-agent CLIs"
  homepage "https://github.com/devicai/shellpilot"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.6.0/shellpilot_0.6.0_darwin_arm64.tar.gz"
      sha256 "5448deb13e14d981c80c6b22a17777a2cfccf7dfe82ad5f4c7daf77f2b0bbb38"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.6.0/shellpilot_0.6.0_darwin_amd64.tar.gz"
      sha256 "abf3d0817a9e38f3f7a8f7d5ce01598dd09b8d0481db16444c20ad5c1819b7e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.6.0/shellpilot_0.6.0_linux_arm64.tar.gz"
      sha256 "b03c501778d8dfb5c3b9254e10a849f714e2ce1993d7792c8410bc74163dbc07"
    end
    on_intel do
      url "https://github.com/devicai/homebrew-tap/releases/download/v0.6.0/shellpilot_0.6.0_linux_amd64.tar.gz"
      sha256 "ebb59ee41ed1230f55cbcd96a7e7ee45ba0e78a188485a30fea129f56891623a"
    end
  end

  def install
    bin.install "shellpilot"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/shellpilot version")
  end
end
