FROM fedora:37

RUN INSTALL_PKGS="findutils" && \
    dnf install -y dnf-plugins-core && \
    dnf install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    dnf clean -y --enablerepo='*' all

COPY . /opt/packages/gemfire/

WORKDIR /opt/packages/gemfire

RUN ./build.sh
