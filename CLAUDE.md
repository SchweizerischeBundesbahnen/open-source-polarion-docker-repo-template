# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

### Testing and Quality Assurance
- **Run all tests with coverage**: `uv run tox`
- **Run tests directly**: `uv run pytest`
- **Run specific test**: `uv run pytest tests/test_app.py -v`
- **Pre-commit hooks**: `uv run pre-commit run --all`

### Code Quality and Linting
- **Format code**: `uv run ruff format`
- **Lint code**: `uv run ruff check`
- **Type checking**: `uv run mypy .`
- **Run linting environment**: `uv run tox -e lint`

### Docker Development
- **Build Docker image**: `docker build --build-arg APP_IMAGE_VERSION=0.0.0 --file Dockerfile --tag <image-name>:0.0.0 .`
- **Run container**: `docker run --detach --publish 9080:9080 --name <container-name> <image-name>:0.0.0`
- **Container structure test**: `container-structure-test test --image <image-name>:0.0.0 --config ./tests/container/container-structure-test.yaml`
- **Vulnerability scanning**: `grype <image-name>:0.0.0`

## Repository Architecture

This is a Docker repository template for SBB Polarion Team projects. The codebase follows these key patterns:

### Project Structure
- **`app/`**: Main Python application code (currently minimal with FastAPI dependencies)
- **`tests/`**: Test suite including unit tests and container structure tests
- **`tests/container/`**: Container-specific tests using container-structure-test
- **uv**: Dependency management and virtual environment handling
- **Docker**: Containerized deployment using Alpine Linux base image

### Key Configuration Files
- **`pyproject.toml`**: Project configuration with PEP 621 metadata, dependency-groups, and tool settings (ruff, mypy)
- **`tox.ini`**: Testing environments configuration with lint and test environments using tox-uv
- **`Dockerfile`**: Build using Python 3.14 Alpine with uv
- **`.tool-versions`**: Python version pinning (used by uv, CI, and Dockerfile)
- **`sonar-project.properties`**: SonarCloud integration for code quality analysis

### Code Quality Standards
- **Ruff**: Primary linter and formatter (line length: 240 characters)
- **MyPy**: Static type checking with strict settings
- **Coverage**: Minimum 80% test coverage requirement
- **Pre-commit hooks**: Automated code quality checks

### Development Workflow
1. This is a template repository - actual implementations should replace placeholder content
2. All code must pass tox environments (lint + test)
3. Coverage reports generated in XML format for SonarCloud integration
4. Container testing validates Docker image structure and security
5. Signed commits required (GPG signing enforced)

### Template Nature
This repository serves as a template for Docker-based Python projects within the SBB Polarion ecosystem. The actual application logic in `app/app.py` is minimal and should be replaced with real implementation.
