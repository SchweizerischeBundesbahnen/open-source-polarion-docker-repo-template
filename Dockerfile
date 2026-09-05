FROM ghcr.io/astral-sh/uv:0.12.10@sha256:2bb3ebca0a796a155094a27773d290c4b074572e6107f171d88d086682fd2500 AS uv-source

FROM python:3.14.7-alpine@sha256:c6ead215bfd31f1e433d968853b7a769989117115b728874824e6c0a27cb96fc
LABEL maintainer="SBB Polarion Team <polarion-opensource@sbb.ch>"

ARG WORKING_DIR=/app
# DO NOT CHANGE APP_IMAGE_VERSION --> It is controlled by the pipeline
ARG APP_IMAGE_VERSION=0.0.0

WORKDIR ${WORKING_DIR}

# Copy uv binary from source stage
COPY --from=uv-source /uv /usr/local/bin/uv

COPY .tool-versions pyproject.toml uv.lock ${WORKING_DIR}/
COPY ./app/ ${WORKING_DIR}/app/

RUN --mount=type=cache,target=/root/.cache/uv \
    uv sync --locked --no-dev

ENV PATH="${WORKING_DIR}/.venv/bin:${PATH}"

ENTRYPOINT [ "python", "-m", "app.app" ]
