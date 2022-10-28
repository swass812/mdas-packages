FROM fedora:35

RUN INSTALL_PKGS="findutils" && \
    dnf install -y dnf-plugins-core && \
    dnf install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    dnf clean -y --enablerepo='*' all
    
COPY . /opt/packages/postgres/

WORKDIR /opt/packages/postgres

RUN ./build.sh
