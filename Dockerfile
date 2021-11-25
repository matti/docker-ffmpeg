FROM busybox as builder

WORKDIR /tmp
# 4.4.1 at the time of writing
RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
RUN tar -xvof ffmpeg-release-amd64-static.tar.xz --strip 1

FROM scratch
COPY --from=builder /tmp/ffmpeg /ffmpeg
