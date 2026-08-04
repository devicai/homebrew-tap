# Devic Homebrew Tap

Homebrew formulae for [Devic](https://www.devic.ai) open-source tooling.

## Install

```sh
brew tap devicai/tap
brew install shellpilot
```

Then run:

```sh
shellpilot version
shellpilot install        # install + shim the CLIs declared in policy
```

## Formulae

| Formula | Description |
|---|---|
| `shellpilot` | ShellPilot wrapper — governance, JIT credentials and audit trail for AI-agent CLIs. |

## Migrating from `devic-cli-wrapper`

The formula was renamed in v0.6.0. On-disk paths moved from `~/.devic/` to
`~/.shellpilot/` and env vars from `DEVIC_*` to `SHELLPILOT_*`, so remove the old
binary and its shims before installing:

```sh
brew uninstall devic-cli-wrapper && rm -rf ~/.devic
brew install shellpilot
shellpilot login --base-url <host>   # re-authenticate
```

## Notes

These formulae install prebuilt binaries attached to this repository's GitHub
Releases. Binaries are unsigned for now; Homebrew installs them without
Gatekeeper friction (it strips the download quarantine attribute). Source for
ShellPilot lives at [devicai/shellpilot](https://github.com/devicai/shellpilot).
