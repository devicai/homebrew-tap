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

## Windows

There is no Homebrew on Windows, so the binary is downloaded straight from a
release. Assets are versioned — bump `0.12.0` to the current tag when a newer
one exists (see [Releases](https://github.com/devicai/homebrew-tap/releases)):

```powershell
$dir = "$env:LOCALAPPDATA\ShellPilot"
Invoke-WebRequest https://github.com/devicai/homebrew-tap/releases/download/v0.12.0/shellpilot_0.12.0_windows_amd64.zip -OutFile "$env:TEMP\shellpilot.zip"
Expand-Archive -Force "$env:TEMP\shellpilot.zip" $dir

# shims first, so the wrapper wins name resolution over the real CLI
$k = 'HKCU:\Environment'
$cur = (Get-Item $k).GetValue('Path','',[Microsoft.Win32.RegistryValueOptions]::DoNotExpandEnvironmentNames)
Set-ItemProperty $k -Name Path -Value ("$env:USERPROFILE\.shellpilot\shims;$dir;" + $cur) -Type ExpandString
```

Open a new terminal, then `shellpilot login --base-url <host>` and
`shellpilot install`. Upgrading means re-running the snippet with the new tag.

Do not set PATH with `setx` (it copies the machine PATH into your user variable
and truncates at 1024 characters) or with
`[Environment]::SetEnvironmentVariable` (it writes `REG_SZ`, freezing any
`%VAR%` in your PATH into a literal — this broke nvm4w on a test machine). The
registry form above preserves both scope and type.

> Windows was verified end to end on real hardware as of 0.11.0. `arm64` zips
> are published alongside `amd64`.

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
