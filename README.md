# homebrew-loom

Homebrew tap for **LoomJarvis** — personal idea archive with AI-enriched canvas.

Source repository: [Parthee-Vijaya/loom](https://github.com/Parthee-Vijaya/loom)

> **Cask name note:** the cask is named `loomjarvis` (not `loom`) to avoid
> collision with Atlassian's `loom` cask in the main homebrew-cask repository.
> The app installs as **LoomJarvis.app** in `/Applications/`.

## Install

```bash
brew install --cask Parthee-Vijaya/loom/loomjarvis
```

Or tap explicitly first:

```bash
brew tap Parthee-Vijaya/loom
brew install --cask loomjarvis
```

## What this installs

- **LoomJarvis.app** Mac desktop client (Tauri-built, ~2 MB DMG)
- Installs in `/Applications/LoomJarvis.app`
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
brew upgrade --cask loomjarvis
```

LoomJarvis also auto-updates via Tauri's updater when a new release lands on GitHub.

## Uninstall

```bash
brew uninstall --cask loomjarvis
brew uninstall --zap --cask loomjarvis    # also wipes data: ~/.loom, support files
```

## First-run Gatekeeper bypass (unsigned builds)

Until LoomJarvis is signed via Apple Developer Program ($99/year), macOS will
warn that the app is from an unidentified developer. Two workarounds:

```bash
# Option 1 — CLI strip quarantine:
xattr -dr com.apple.quarantine /Applications/LoomJarvis.app

# Option 2 — right-click LoomJarvis.app → "Åbn" → confirm in dialog.
# macOS remembers your choice.
```

## Related taps

- [homebrew-saga](https://github.com/Parthee-Vijaya/homebrew-saga) — Danish kommunal lederassistent
- [homebrew-skynet](https://github.com/Parthee-Vijaya/homebrew-skynet) — Personal intelligence platform

---

*Distribution-pipeline for the LoomJarvis desktop app.*
