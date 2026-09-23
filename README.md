# homebrew-tap

Public distribution for [agents-md-gen](https://www.npmjs.com/package/agents-md-gen),
which generates a solid AGENTS.md/CLAUDE.md for any repo by detecting its
stack, commands, and structure.

## Homebrew (macOS/Linux)

```
brew install peshino2012/tap/agents-md-gen
```

## Scoop (Windows)

```
scoop bucket add peshino2012 https://github.com/Peshino2012/homebrew-tap
scoop install peshino2012/agents-md-gen
```

## GitHub Action

```yaml
- uses: Peshino2012/homebrew-tap/action@main
  with:
    also-claude-md: 'true'
```

Set `check: 'true'` to fail CI when `AGENTS.md` goes stale instead of
writing it. See [`action/action.yml`](action/action.yml) for all inputs.

## Go

```
go install github.com/Peshino2012/homebrew-tap/go-agents-md-gen/cmd/agents-md-gen@latest
```

The Homebrew formula and Scoop manifest are bumped automatically when a new
version reaches npm, after a real install + `--help` run on macOS/Windows.
