FROM fedora:35

RUN INSTALL_PKGS="findutils" && \
    dnf install -y dnf-plugins-core && \
    dnf install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    dnf clean -y --enablerepo='*' all

COPY . /opt/packages/tce-0.11/

WORKDIR /opt/packages/tce-0.11

RUN ./build.sh
