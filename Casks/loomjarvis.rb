cask "loomjarvis" do
  version "0.1.0"
  sha256 "a7de1ab6868e275417e7cad8f8e4e07bce7dd2ccb7e7eec0789260f1a7c9e4f5"

  on_arm do
    url "https://github.com/Parthee-Vijaya/loom/releases/download/v#{version}/LoomJarvis_#{version}_aarch64.dmg"
  end
  on_intel do
    url "https://github.com/Parthee-Vijaya/loom/releases/download/v#{version}/LoomJarvis_#{version}_x64.dmg"
  end

  name "LoomJarvis"
  desc "Personal idea archive with AI-enriched canvas, incubator, and synthesis"
  homepage "https://github.com/Parthee-Vijaya/loom"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "LoomJarvis.app"

  caveats <<~EOS
    LoomJarvis uses a local Docker stack for its API + database. If you don't
    already have Docker Desktop or OrbStack, install one of them:

      brew install --cask orbstack       # recommended, lightweight
      brew install --cask docker         # alternative

    On first launch, the onboarding wizard will:
      • detect your hardware and recommend an LLM (local or cloud)
      • install Ollama via brew if you choose local
      • import your Claude and GitHub projects
      • set up Voyage embeddings (optional)

    Your data lives at:
      ~/.loom/             — docker-compose + .env + patches
      ~/.loom/CAPTURE_TOKEN — iOS Shortcut / Raycast dispatch token

    Note: the cask is named `loomjarvis` (not `loom`) because Atlassian's
    `loom` cask already exists in homebrew-cask main repo. The app installs
    as `LoomJarvis.app` in /Applications/.
  EOS

  zap trash: [
    "~/Library/Application Support/loom",
    "~/Library/Logs/loom",
    "~/Library/Preferences/com.loomjarvis.desktop.plist",
    "~/Library/Saved Application State/com.loomjarvis.desktop.savedState",
    "~/.loom",
  ]
end
