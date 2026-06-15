# takuto-team/homebrew-tap

Homebrew tap for [takuto](https://github.com/takuto-team/takuto-cli) — an interactive CLI for managing Takuto orchestration containers.

## Install

```sh
brew install takuto-team/tap/takuto
```

This is shorthand for tapping this repository and installing the formula. Equivalently:

```sh
brew tap takuto-team/tap
brew install takuto
```

## Upgrade

```sh
brew update
brew upgrade takuto
```

## Uninstall

```sh
brew uninstall takuto
brew untap takuto-team/tap
```

## Notes

The takuto-cli release artifacts are hosted in a private repository, so `brew install`
requires that your environment is authenticated to GitHub (for example via a
`HOMEBREW_GITHUB_API_TOKEN` with access to the release assets).
