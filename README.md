# ime_fastqc
Docker image for the FastQC software package

## Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

## Usage

The docker image provides the [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) software. It will run the `fastqc` command as entrypoint.
Therefore, running a container is as easy as:

```
docker run --rm greatfireball/ime_fastqc --version
```

Just provide all required parameters via command line.
Default working directory is `/data`.
Therefore, input data should be mounted using `/data` volume.

Running the command to get the information for a local file `localfile` in the current folder:

```
docker run --rm -v $PWD:/data greatfireball/ime_fastqc localfile
```

## Releases

The master branch contains a rolling release.
The develop branch is used for further development.
Specific tags are used for different SeqFilter releases. Latest release is [![](https://images.microbadger.com/badges/version/greatfireball/ime_fastqc:v0.11.8.svg)](https://microbadger.com/images/greatfireball/ime_fastqc:v0.11.8 "Get your own version badge on microbadger.com").

| Version/Branch | Commit in Docker Repo | Image |
| -------------- | --------------------- | ----- |
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_fastqc:master.svg)](https://microbadger.com/images/greatfireball/ime_fastqc:master "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/commit/greatfireball/ime_fastqc:master.svg)](https://microbadger.com/images/greatfireball/ime_fastqc:master "Get your own commit badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/greatfireball/ime_fastqc:master.svg)](https://microbadger.com/images/greatfireball/ime_fastqc:master "Get your own image badge on microbadger.com") |
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_fastqc:develop.svg)](https://microbadger.com/images/greatfireball/ime_fastqc:develop "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/commit/greatfireball/ime_fastqc:develop.svg)](https://microbadger.com/images/greatfireball/ime_fastqc:develop "Get your own commit badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/greatfireball/ime_fastqc:develop.svg)](https://microbadger.com/images/greatfireball/ime_fastqc:develop "Get your own image badge on microbadger.com") |
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_fastqc:v0.11.8.svg)](https://microbadger.com/images/greatfireball/ime_fastqc:v0.11.8 "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/commit/greatfireball/ime_fastqc:v0.11.8.svg)](https://microbadger.com/images/greatfireball/ime_fastqc:v0.11.8 "Get your own commit badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/greatfireball/ime_fastqc:v0.11.8.svg)](https://microbadger.com/images/greatfireball/ime_fastqc:v0.11.8 "Get your own image badge on microbadger.com") |

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Author

- **Frank Förster** - *Initial work* - [greatfireball](https://github.com/greatfireball)

See also the list of [contributors](https://github.com/greatfireball/ime_fastqc/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
