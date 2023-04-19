# HB-Nvenc-Imagemagick

Docker Handbrake1.6 Nvenc ImageMagick




Launch the HandBrake docker container with the following command:

```
docker run -d -t \
    --name=handbrake \
    -p 5800:5800 \
    -v <replace/the/path>:/config:rw \
    -v <replace/the/path>:/storage:ro \
    -v <replace/the/path>:/watch:rw \
    -v <replace/the/path>:/output:rw \
    --gpus all \
    hiway-media/hb-nvenc-imagemagick:latest
```

#### Usage

- `--gpus all` this enables the passthrough to the GPU(s)
- `Port 5800`: for WebGUI
- `Port 5900`: for VNC client connection
- `/config`: This is where the application stores its configuration, log and any files needing persistency.
- `/storage`: This location contains files from your host that need to be accessible by the application.
- `/watch`: This is where videos to be automatically converted are located.
- `/output`: This is where automatically converted video files are written.

Browse to `http://your-host-ip:5800` to access the HandBrake GUI. 

Files from the host appear under the `/storage` folder in the container.

#### Optional parameters

- `-e AUTOMATED_CONVERSION_PRESET` (default: `"Very Fast 1080p30"`)
- `-e AUTOMATED_CONVERSION_FORMAT` (default: `"mp4"`)
- `-e APP_NAME` (default: `"Handbrake"`)

additional detailed info:
<https://github.com/HiWay-Media/HB-Nvenc-Imagemagick>
