# homebrew-loom

Homebrew tap for [Loom](https://github.com/Parthee-Vijaya/loom) — personal idea archive with AI-enriched canvas.

> **Note:** The cask is named `loom-canvas` (not `loom`) to avoid collision
> with Atlassian's `loom` cask in the main homebrew-cask repository. The app
> itself still installs as **Loom.app** in `/Applications/`.

## Install

```bash
brew install --cask parthee-vijaya/loom/loom-canvas
```

Or tap explicitly first:

```bash
brew tap parthee-vijaya/loom
brew install --cask loom-canvas
```

## What this installs

- The **Loom.app** Mac desktop client (Tauri-built, ARM64 + x64 universal)
- Lives in `/Applications/Loom.app`
- First-run onboarding wizard handles:
  - Hardware detection + LLM recommendation
  - Ollama install (if you pick local LLM)
  - Anthropic/Gemini API-key setup (if cloud)
  - Project import from Claude folders + GitHub
  - Voyage embeddings setup

## Requirements

- macOS 14 (Sonoma) or newer
- Docker Desktop or OrbStack (the cask doesn't auto-install — see install caveats)
- ~3 GB free disk space (plus model size if local LLM)

## Update

```bash
brew upgrade --cask loom-canvas
```

Loom also auto-updates via Tauri's updater when a new release lands on GitHub.

## Uninstall

```bash
brew uninstall --cask loom-canvas
brew uninstall --zap --cask loom-canvas    # also wipes data: ~/.loom, support files
```

## Related taps

- [homebrew-saga](https://github.com/Parthee-Vijaya/homebrew-saga) — Danish kommunal lederassistent
- [homebrew-skynet](https://github.com/Parthee-Vijaya/homebrew-skynet) — Personal intelligence platform

---

*Distribution-pipeline for the Loom desktop app. Source lives at [Parthee-Vijaya/loom](https://github.com/Parthee-Vijaya/loom).*
