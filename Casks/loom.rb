cask "loom" do
  version "0.1.0"
  sha256 "f2d93d0b2e8ee005bf677892b6ce39c8ea7406974fef688c3372941830d9e63b"

  on_arm do
    url "https://github.com/Parthee-Vijaya/loom/releases/download/v#{version}/Loom_#{version}_aarch64.dmg"
  end
  on_intel do
    url "https://github.com/Parthee-Vijaya/loom/releases/download/v#{version}/Loom_#{version}_x64.dmg"
  end

  name "Loom"
  desc "Personal idea archive with AI-enriched canvas, incubator, and synthesis"
  homepage "https://github.com/Parthee-Vijaya/loom"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Loom.app"

  # First-run setup: Loom expects docker (or orbstack) for its compose stack.
  # We don't auto-install Docker here — the onboarding wizard inside Loom
  # detects it and points the user to orbstack.dev if missing.
  caveats <<~EOS
    Loom uses a local Docker stack for its API + database. If you don't
    already have Docker Desktop or OrbStack, install one of them:

      brew install --cask orbstack       # recommended, lightweight
      brew install --cask docker         # alternative

    On first launch, Loom's onboarding wizard will:
      • detect your hardware and recommend an LLM (local or cloud)
      • install Ollama via brew if you choose local
      • import your Claude and GitHub projects
      • set up Voyage embeddings (optional)

    Your data lives at:
      ~/.loom/             — docker-compose + .env + patches
      ~/.loom/CAPTURE_TOKEN — iOS Shortcut / Raycast dispatch token
  EOS

  zap trash: [
    "~/Library/Application Support/loom",
    "~/Library/Logs/loom",
    "~/Library/Preferences/com.parthee.loom.plist",
    "~/Library/Saved Application State/com.parthee.loom.savedState",
    "~/.loom",
  ]
end
