# This is mostly a copy of "Dockerfile" in SonarSource/sonarlint-eclipse!
# Adjusted to remove unnecessary stuff not needed for the Eclipse RedDeer build.

ARG CIRRUS_AWS_ACCOUNT=275878209202
ARG JDK_VERSION=17
FROM public.ecr.aws/docker/library/eclipse-temurin:11-jammy AS buildphase-11

FROM ${CIRRUS_AWS_ACCOUNT}.dkr.ecr.eu-central-1.amazonaws.com/base:j${JDK_VERSION}-m3.9-latest

USER root
COPY --from=buildphase-11 /opt/java/openjdk /opt/java/openjdk-11

RUN apt-get update && apt-get install -y \
    dbus-x11 \
    ffmpeg \
    gettext-base \
    metacity \
    xvfb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY --chmod=755 .cirrus/init.d/xvfb /etc/init.d/

USER sonarsource
ENV JAVA_HOME_11_X64=/opt/java/openjdk-11
ENV JAVA_HOME_17_X64=/opt/java/openjdk
COPY --chown=sonarsource .cirrus/toolchains.xml .m2/toolchains.xml
