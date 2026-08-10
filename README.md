# raja-jamwal/homebrew-tap

A [Homebrew](https://brew.sh) tap for Raja Jamwal's apps and tools.

## Multiplex

A native macOS multiplexer for many concurrent terminal / Claude Code sessions —
Split / Timeline / Grid views, real embedded terminals, and a menu-bar dropdown.

```sh
brew install --cask raja-jamwal/tap/multiplex
```

The app is signed with a Developer ID certificate and notarized by Apple, so it
launches with no Gatekeeper warnings. Requires macOS 14 (Sonoma) or later.

## Bonsai

A tree-structured, branching conversation client for the Claude CLI — fork any
turn into a new branch, navigate the tree, and keep every thread in one place.

```sh
brew install --cask raja-jamwal/tap/bonsai
```

Signed with a Developer ID certificate and notarized by Apple. Apple Silicon
only; requires macOS 11 (Big Sur) or later, plus the [`claude`
CLI](https://docs.claude.com/en/docs/claude-code) on your PATH.

## Adding more later

Drop `Casks/<name>.rb` (GUI apps / prebuilt binaries) or `Formula/<name>.rb`
(CLI tools) into this repo, then `brew install [--cask] raja-jamwal/tap/<name>`.
