FROM busybox

# Source directory for the theme files
RUN mkdir -p /theme/i4trust-nocheaper && mkdir -p /theme/img

# Target directories
RUN mkdir -p /themes/i4trust-nocheaper && mkdir -p /img/

# Copy theme files to source directory
ADD i4trust-nocheaper /theme/i4trust-nocheaper
ADD img /theme/img
COPY run.sh /
WORKDIR /theme

ENTRYPOINT [ "/bin/sh", "/run.sh" ]
