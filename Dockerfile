FROM python:3.13.0-slim@sha256:0de818129b26ed8f46fd772f540c80e277b67a28229531a1ba0fdacfaed19bcb
LABEL maintainer="SBB Polarion Team <polarion-opensource@sbb.ch>"

ARG APP_IMAGE_VERSION=0.0.0-dev
WORKDIR ${WORKING_DIR}

COPY requirements.txt ${WORKING_DIR}/requirements.txt
COPY ./app/ ${WORKING_DIR}/app/
COPY ./poetry.lock ${WORKING_DIR}
COPY ./pyproject.toml ${WORKING_DIR}

RUN pip install --no-cache-dir -r ${WORKING_DIR}/requirements.txt && poetry install

ENTRYPOINT [ "poetry", "run", "python", "-m", "app.requirements_inspector_service" ]
