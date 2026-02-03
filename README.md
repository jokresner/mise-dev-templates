# mise-dev-templates

A collection of [mise](https://mise.jdx.dev/) configuration templates for various development environments. These templates help you quickly bootstrap projects with pre-configured tools, environment variables, and tasks.

## Directory Structure

- **templates/languages/**: Base language configurations
  - `go.toml`: Go environment with `air` and `goimports`.
  - `python.toml`: Python environment using `uv`.
  - `rust.toml`: Rust environment with `cargo-binstall`, `cargo-watch`, and `cargo-audit`.
  - `zig.toml`: Zig environment with `zls`.
- **templates/stacks/**: Opinionated full-stack or domain-specific setups
  - `web.toml`: Web dev environment with Node.js, `yarn`, `jq`, and `eslint`.

## How to Use

### Quick Start (Download via curl/wget)

You can download a template directly into your project directory as `mise.toml`.

**Using curl:**
```bash
# Example: Download the Rust template
curl -o mise.toml https://raw.githubusercontent.com/jokresner/mise-dev-templates/refs/heads/main/templates/languages/rust.toml
```

**Using wget:**
```bash
# Example: Download the Web stack template
wget -O mise.toml https://raw.githubusercontent.com/jokresner/mise-dev-templates/refs/heads/main/templates/stacks/web.toml
```

### Using Import

If you have cloned this repository locally or added it as a submodule, you can import templates into your project's main `mise.toml`.

```toml
[config]
# Import a language template
import = ["path/to/mise-dev-templates/templates/languages/rust.toml"]

# Or import a stack
# import = ["path/to/mise-dev-templates/templates/stacks/web.toml"]
```

### Manual Usage

1. Copy the contents of the desired `.toml` file.
2. Paste it into your project's `mise.toml`.
3. Run `mise install` to install the defined tools.

## Prerequisites

- [mise-en-place](https://mise.jdx.dev/getting-started.html) installed on your system.

## License

[CC0-1.0](LICENSE.md)
