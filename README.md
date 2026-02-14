# Codex Homebrew Tap

This repository hosts the Homebrew tap for the `codex` CLI and the workflow that
builds and publishes release artifacts from upstream.

## Install with Homebrew

```bash
brew tap corphq/codex https://github.com/corphq/codex
brew install codex
```

You can also install directly:

```bash
brew install corphq/codex/codex
```

## Upgrade

```bash
brew upgrade codex
```

## Notes

- The formula currently supports Apple Silicon only.
- Releases are generated from upstream `openai/codex` and published to this repo.
