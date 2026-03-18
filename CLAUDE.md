# CLAUDE.md

- Use `uv run` for all tools (`uv run tox`, `uv run pytest`, `uv run ruff`, etc.) — never invoke them directly.
- Docker builds require `--build-arg APP_IMAGE_VERSION=<version>`; omitting it will fail.
- Signed commits are required (GPG enforced via git config conditional includes).
- This is a repository template. Keep code minimal and generic — do not add real Polarion integration logic or domain-specific functionality.
