# Docker image for NSIS

The [Dockerfile](Dockerfile) contains a recipe for a Docker image, that can be used to build [NSIS](https://nsis.sourceforge.io/Main_Page) installers.
The image is available precompiled from [Francxpt/nsis](https://hub.docker.com/r/Francxpt/nsis).

## Usage

Just mount your NSIS build scripts and resources to `/build` and add the relative path to your NSIS script as an argument.
Let's assume your script is called `install.nsi`, then you would call

    docker run --rm -v /path/to/resources:/build Francxpt/nsis install.nsi