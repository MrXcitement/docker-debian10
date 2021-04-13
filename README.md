# Docker Debian 10 Image
A Docker Debian 10 image to be used as a development container.

## Overview
This project uses a Dockerfile and Makefile to manage the creation and
distribution of a Debian docker image.  The Makefile uses a timestamp to build
the initial image. The name of the tagged image is stored in the ```build```
file and this file is used to get the tagged image's name for the later
push and tag rules. The make command touch is used to create files for the non-file
targets: push, tag, tag-ver, tag-latest.

## Usage
To build and tag an image
```
make
```

To build the image

```
$ make build
```

To clean the build process and start over
```
$ make clean
```

To login to docker hub

```
$ make login
```

To push the built image and tags to docker hub

```
$ make push
```

To run the built image

```
$ make run
```

To tag the built image with version and latest tags
```
$ make tag
```

To tag the built image with version tag
```
$ make tag-version
```

To tag the built image with latest tag
```
$ make tag-latest
```

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of
conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available,
see the [tags on this repository](https://github.com/MrXcitement/docker-debian10/tags). 

## Authors

* **Mike Barker** - *Creator* - [MrXcitement](https://github.com/mrxcitement)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* PurpleBooth's --
 [README](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2) and
 [CONTRIBUTING](https://gist.github.com/PurpleBooth/b24679402957c63ec426) samples
