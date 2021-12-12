**This is a fork of the [h36m-fetch tool by Aiden Nibali](https://github.com/anibali/h36m-fetch). Main difference is
that the tar files are extracted in a manner such that subject based folder structure is preserved. Further
it does not process the dataset in any manner, simply downloads and extracts the archives.** 

# Human3.6M dataset fetcher

[Human3.6M](http://vision.imar.ro/human3.6m/description.php) is a 3D
human pose dataset containing 3.6 million human poses and corresponding
images. The scripts in this repository make it easy to download,
extract, and preprocess the images and annotations from Human3.6M.

**Please do not ask me for a copy of the Human3.6M dataset. I do not own
the data, nor do I have permission to redistribute it. Please visit
http://vision.imar.ro/human3.6m/ in order to request access and contact
the maintainers of the dataset.**

## Requirements

* Python 3
* requests
* tqdm
* [`axel`](https://github.com/axel-download-accelerator/axel)

Alternatively, a Dockerfile is provided which has all of the
requirements set up.

## Usage

1. Firstly, you will need to create an account at
   http://vision.imar.ro/human3.6m/ to gain access to the dataset.

2. Once your account has been approved, log in and inspect your cookies
   to find your PHPSESSID.

3. Copy the configuration file `config.ini.example` to `config.ini`
   and fill in your PHPSESSID.

4. Build the docker container (must be in root of this repo)

```shell
docker-compose build
```

5. Use the `download_all.py` script to download the dataset as such:
```shell
$ docker-compose run --rm --user="$(id -u):$(id -g)" main python3 download_all.py
```

6. Extract the files using the provided script.

```shell
./extract_all.sh --source=archives --destination=/somewhere/Human3.6M
```
## License

The code in this repository is licensed under the terms of the
[Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0).

Please read the
[license agreement](http://vision.imar.ro/human3.6m/eula.php) for the
Human3.6M dataset itself, which specifies citations you must make when
using the data in your own research. The file `metadata.xml` is directly
copied from the "Visualisation and large scale prediction software"
bundle from the Human3.6M website, and is subject to the same license
agreement.
