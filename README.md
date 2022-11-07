### devEnv - docker configuration for setup development environment

Contains:
- build-essential
- rust
- python3
- emacs
- git

### How to setup?

Run the following commands:
 `docker build -t devenv .` - build the devEnv image.
 `docker run --name devenv -it devenv` - build and run the devEnv container.
 `docker run -it devenv` - run the existing devenv container.

