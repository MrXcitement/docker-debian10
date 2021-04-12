# Docker Debian Base Image
A Debian 10 base image to be used as a starting point for other images.

## Overview
This project uses a Dockerfile and Makefile to manage the creation and
distribution of a base Debian docker image.  One novel aspect of the Makefile
is the use of touch to create files for the non-file targets docker-build and
docker-push.

## Usage
To build the image

```
$ make docker-build
```

To push the built image

```
$ make docker-push
```

To login to docker hub

```
$ make docker-login
```

To run the image

```
$ make docker-run
```

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of
conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available,
see the [tags on this repository](https://github.com/MrXcitement/docker-debian-base/tags). 

## Authors

* **Mike Barker** - *Initial work* - [MrXcitement](https://github.com/mrxcitement)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* PurpleBooth's --
 [README](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2) and
 [CONTRIBUTING](https://gist.github.com/PurpleBooth/b24679402957c63ec426) samples
