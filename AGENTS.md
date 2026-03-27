# Repository Guidelines

## Project Structure & Module Organization
`init.lua` is the entrypoint and only bootstraps the config in `lua/config/lazy.lua`. Core editor behavior lives in `lua/config/`: `options.lua`, `keymaps.lua`, `autocmds.lua`, and Lazy setup. Plugin specs and overrides live in `lua/plugins/`, usually one file per concern such as `lsp.lua`, `git.lua`, or `explorer.lua`. `lazyvim.json` enables LazyVim extras, and `lazy-lock.json` pins plugin revisions for reproducible installs.

## Build, Test, and Development Commands
Use Neovim headless mode for repeatable checks:

```sh
nvim
nvim --headless "+Lazy! sync" +qa
nvim --headless "+checkhealth" +qa
stylua init.lua lua/
```

`nvim` starts the config locally. `+Lazy! sync` installs or updates plugins from the spec and lockfile. `+checkhealth` catches missing runtimes or broken integrations. `stylua` applies the repository formatting rules before committing.

## Coding Style & Naming Conventions
Lua files use spaces, 2-space indentation, and a 120-column limit from `stylua.toml`. Keep plugin modules focused and return a Lua table of plugin specs. Prefer descriptive, lower-case filenames in `lua/plugins/` and group related settings in the matching file instead of building large catch-all modules. Keep comments brief and only where behavior is non-obvious.

## Testing Guidelines
There is no dedicated automated test suite in this repository. Validate changes by:

```sh
nvim --headless "+Lazy! sync" +qa
nvim --headless "+checkhealth" +qa
```

Then open Neovim normally and exercise the affected workflow or filetype. For plugin changes, confirm startup is clean and review any `lazy-lock.json` diff before submitting.

## Commit & Pull Request Guidelines
Recent commits use short, lower-case, imperative subjects such as `enable wrap` and `update ai`. Follow that style, keep the subject concise, and avoid trailing punctuation. Pull requests should explain the user-visible change, list manual verification steps, and call out plugin additions, removals, or lockfile updates. Include screenshots only when the change affects visible UI behavior.

## Security & Configuration Tips
This config can install third-party plugins automatically through `lazy.nvim`. Review new plugin sources before adding them, and do not commit machine-specific secrets, tokens, or local-only paths.
