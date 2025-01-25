FROM python:3.13.1-slim@sha256:026dd417a88d0be8ed5542a05cff5979d17625151be8a1e25a994f85c87962a5
LABEL maintainer="SBB Polarion Team <polarion-opensource@sbb.ch>"

ARG APP_IMAGE_VERSION=0.0.0-dev
WORKDIR ${WORKING_DIR}

COPY requirements.txt ${WORKING_DIR}/requirements.txt
COPY ./app/ ${WORKING_DIR}/app/
COPY ./poetry.lock ${WORKING_DIR}
COPY ./pyproject.toml ${WORKING_DIR}

RUN pip install --no-cache-dir -r "${WORKING_DIR}"/requirements.txt && poetry install --no-root

ENTRYPOINT [ "poetry", "run", "python", "-m", "app.requirements_inspector_service" ]
