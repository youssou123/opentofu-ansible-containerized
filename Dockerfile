FROM alpine:3.19
RUN apk add --no-cache curl bash opentofu ansible-core python3
WORKDIR /workspace
CMD ["/bin/bash"]
