[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template)
[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template&metric=bugs)](https://sonarcloud.io/summary/new_code?id=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template)
[![Code Smells](https://sonarcloud.io/api/project_badges/measure?project=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template&metric=code_smells)](https://sonarcloud.io/summary/new_code?id=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template)
[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template&metric=coverage)](https://sonarcloud.io/summary/new_code?id=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template)
[![Duplicated Lines (%)](https://sonarcloud.io/api/project_badges/measure?project=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template&metric=duplicated_lines_density)](https://sonarcloud.io/summary/new_code?id=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template)
[![Lines of Code](https://sonarcloud.io/api/project_badges/measure?project=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template&metric=ncloc)](https://sonarcloud.io/summary/new_code?id=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template&metric=reliability_rating)](https://sonarcloud.io/summary/new_code?id=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template&metric=security_rating)](https://sonarcloud.io/summary/new_code?id=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template)
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template&metric=sqale_rating)](https://sonarcloud.io/summary/new_code?id=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template)
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template&metric=vulnerabilities)](https://sonarcloud.io/summary/new_code?id=SchweizerischeBundesbahnen_open-source-polarion-docker-repo-template)

# << TITLE >>
<< Short Description >>

## Build Docker image

```bash
  docker build \
    --build-arg APP_IMAGE_VERSION=X.Y.Z \
    --file Dockerfile \
    --tag <<docker-image-name>>:X.Y.Z
    .
```

## Start Docker container

```bash
  docker run --detach \
    --publish 9080:9080 \
    --name <<docker-container-name>> \
    <<docker-image-name>>:X.Y.Z
```

## Stop Docker container

```bash
  docker container stop <<docker-container-name>>
```

## Testing Docker image

```bash
docker build -t open-source-polarion-docker-repo-template:local .
container-structure-test test --image open-source-polarion-docker-repo-template:local --config .config/container-structure-test.yaml
```
