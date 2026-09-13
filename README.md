# Orchestrator Homebrew tap

Maintainer-run Homebrew packaging for [Orchestrator](https://zachealy1.github.io/orchestrator/): **VS Code × Codex × Jira, in one free, open-source Mac app.**

Orchestrator brings repository browsing, Codex conversations, Kanban tasks, subagent inspection and local code review into one workspace. The app is MIT licensed and currently in public beta.

## Install

Requires macOS 15 or later, an Apple Silicon or Intel Mac, and an existing [Homebrew](https://brew.sh/) installation:

```sh
brew install --cask zachealy1/tap/orchestrator
```

Homebrew chooses the installer for your Mac's architecture and verifies its SHA-256 checksum. This tap currently packages [v0.2.0-beta.2](https://github.com/zachealy1/orchestrator/releases/tag/v0.2.0-beta.2).

**This beta is not notarized by Apple.** Homebrew preserves quarantine protection, and macOS may block the first launch. Read the [installation guidance and limitations](https://github.com/zachealy1/orchestrator#download-and-install) before opening it. This is a maintainer-run tap, separate from the Homebrew project's cask directory.

You need your own supported Codex account; provider costs and usage limits apply. Claude and local-model support are planned. Homebrew is optional: [direct DMG downloads](https://github.com/zachealy1/orchestrator/releases/tag/v0.2.0-beta.2) are also available.

## Update and uninstall

The app has an in-app update flow. To check for a newer version packaged in this tap:

```sh
brew update
brew upgrade --cask --greedy zachealy1/tap/orchestrator
```

Quit Orchestrator before upgrading or uninstalling. Uninstall the app with:

```sh
brew uninstall --cask orchestrator
```

The cask does not remove your repositories, task data or Codex account state. If you already installed the DMG manually, Homebrew may report that the app already exists; it will not silently replace that copy.

## Feedback and maintenance

Report product bugs and workflow feedback in the [Orchestrator issue tracker](https://github.com/zachealy1/orchestrator/issues). Report packaging problems in [this tap's issue tracker](https://github.com/zachealy1/homebrew-tap/issues).

Release updates are reviewed manually. When updating the cask, verify that the release is public, check both architecture-specific DMG checksums, confirm the app bundle name and minimum macOS version, and update the version in this README. The cask uses pinned release URLs and contains no installer scripts or quarantine overrides.

This tap's packaging is MIT licensed; see [LICENSE](LICENSE).
