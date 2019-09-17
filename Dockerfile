FROM busybox as builder

WORKDIR /tmp
RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
RUN tar -xvof ffmpeg-release-amd64-static.tar.xz --strip 1

FROM scratch
COPY --from=builder /tmp/ffmpeg /ffmpeg
