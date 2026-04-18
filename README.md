# homebrew-tap

Homebrew tap for [NPC Worldwide](https://github.com/NPC-Worldwide) tools.

## Install

```
brew tap npc-worldwide/tap
```

Then:

```
brew install nql         # SQL compiler with AI function calls (Rust CLI)
brew install npcsh       # npcsh agentic shell
brew install incognide   # incognide desktop app
```

## Formulas

Formulas are auto-updated by each project's release workflow when a new version is tagged. To add a new project to this tap:

1. In the project's release workflow, after building signed binaries and uploading them to a GitHub release, compute SHA-256 for each archive.
2. Render a formula file (see `Formula/nql.rb` for a template) with the new `version`, `url`, and `sha256` per platform.
3. Commit + push to this repo on the `main` branch.

Each project stores a `HOMEBREW_TAP_TOKEN` repo secret — a PAT with `repo` write access to this tap — which its workflow uses to push.
