FROM ubi8/s2i-base

ENV SUMMARY="Powershell s2i builder image which allows using of powershell."	\
    DESCRIPTION="The s2i-powershell image provides the use source-to-image functionality for powershell scripts."

LABEL PWSH_VERSION=7.2 \
      summary="$SUMMARY" \
      description="$DESCRIPTION" \
      io.k8s.description="$DESCRIPTION" \
      io.k8s.display-name="Powershell" \
      io.s2i.scripts-url=image:///usr/libexec/s2i \
      io.openshift.tags="builder,powershell,pwsh,pwsh72,pwsh-7.2" \
      com.redhat.component="pwsh-72-container" \
      name="ubi8/s2i-powershell-72" \
      VERSION="1"

RUN curl -L https://packages.microsoft.com/config/rhel/8/prod.repo -o /etc/yum.repos.d/microsoft.repo

RUN INSTALL_PKGS="powershell" && yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
  rpm -V $INSTALL_PKGS && \
  yum -y clean all --enablerepo='*'

COPY s2i/bin/ $STI_SCRIPTS_PATH

USER 1001

CMD $STI_SCRIPTS_PATH/usage