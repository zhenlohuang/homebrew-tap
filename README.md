# zhenlohuang/homebrew-tap

Personal Homebrew tap for distributing multiple custom CLI tools (more formulae will be added over time).

## Requirements

- [Homebrew](https://brew.sh/) installed

## Quick Start

1. Add this tap:

```bash
brew tap zhenlohuang/tap
```

2. Install any tool:

```bash
brew install <formula>
```

Example:

```bash
brew install vibemate
```

You can also use the fully-qualified name:

```bash
brew install zhenlohuang/tap/<formula>
```

## List Available Tools

```bash
brew search zhenlohuang/tap/
```

## Current Formulae

- `vibemate` - VibeMate is a local CLI companion for coding agents.

## Upgrade

Upgrade a specific tool:

```bash
brew update
brew upgrade <formula>
```

## Uninstall

Uninstall a specific tool:

```bash
brew uninstall <formula>
```

Remove the tap when you no longer need it:

```bash
brew untap zhenlohuang/tap
```
