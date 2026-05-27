# Devic Homebrew Tap

Homebrew formulae for [Devic](https://www.devic.ai) open-source tooling.

## Install

```sh
brew tap devicai/tap
brew install devic-cli-wrapper
```

Then run:

```sh
devic-cli-wrapper version
devic-cli-wrapper install        # install + shim the CLIs declared in policy
```

## Formulae

| Formula | Description |
|---|---|
| `devic-cli-wrapper` | ShellPilot wrapper — governance, JIT credentials and audit trail for AI-agent CLIs. |

## Notes

These formulae install prebuilt binaries attached to this repository's GitHub
Releases. Binaries are unsigned for now; Homebrew installs them without
Gatekeeper friction (it strips the download quarantine attribute). Source for
ShellPilot lives at [devicai/shellpilot](https://github.com/devicai/shellpilot).
