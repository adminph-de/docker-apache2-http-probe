<!--
*** To avoid retyping too much info. Do a search and replace for the following:
*** adminph-de, docker-apache2-http-probe, N00ky2010, patrick.hayo@flsmidth.com
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url] 

# Apache Http-Probe Container

> Apache Web Server (httpd) container to use as an Http probe for various services, as an example for a status check on Azure Traffic Manager. Use it to provide an independent Apache instance on a server (Linux).

<!-- CONTENT -->
## Content

- [Apache Http-Probe Container](#apache-http-probe-container)
  - [Content](#content)
  - [About](#about)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
    - [Usage](#usage)
  - [Contributing](#contributing)
  - [Contact](#contact)
  - [Acknowledgements](#acknowledgements)
  - [Referenzes](#referenzes)


<!-- ABOUT THE PROJECT  -->
## About

The meaning of this container is to run an Apache Web Server in a Linux container to keep an independent instance on a Server to use it, for example, an Http probe endpoint, for example, a Loadbalancer, Traffic Manager, etc. in Azure. It contains a status webpage that shows a simple ``being-alive`` status.

![screenshot]


<!-- PREREQUISITES  -->
### Prerequisites

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

<!-- INSTALLATION  -->
### Installation

Clone the Repository:
```bash
git clone -b master https://github.com/adminph-de/docker-apache2-http-probe.git 
```

All necessary files to build the container are placed in the ```build``` folder:
```
.
├── Dockerfile
├── LICENSE
├── README.md
├── flsmidth.png
├── images
│   └── screen.png
├── index.html
├── script.js
└── style.css
```

You can change the ``logo.png`` to your own logo and modify the ``index.html`` content.

Simply run a ``docker build`` in the ``build`` folder
```bash
docker build -t http-probe:latest .
```

or pull my pre-build container.
```bash
docker pull codesnipes\apache2-http-probe:latest
```

<!-- USAGE  -->
### Usage

Run the container on your local system:
```bash
docker container run -d --name http-probe -p 8080:80 codesnipe\apache2-http-probe:latest
```

If you like to keep the container up after you reboot your system, add ``--always restart `` to the run command.

After a successful start, you can test the container by browsing to ``http://localhost:8080`` and check
the output of your (customized) web page. If you like to be flexible to change the content (index.html, etc.)
during the container runs, you can use a bind-mount to the ``build`` folder.

```bash
docker container run -d --name http-probe -p 8080:80 \
  -v {host-directory-to-the-repository-folder}:/usr/local/apache2/htdocs \
  codesnipe\pache2-http-probe:latest
```


<!-- CONTRIBUTING  -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. 
Any contributions you make are **greatly appreciated**.

1. [Fork](https://docs.github.com/en/enterprise/2.13/user/articles/fork-a-repo) the Project
2. Create your Feature Branch `git checkout -b feature/AmazingFeature`
3. Commit your Changes `git commit -m 'Add some AmazingFeature'`
4. Push to the Branch `git push origin feature/AmazingFeature`
5. Open a Pull Request


<!-- CONTACT -->
## Contact

[LinkedIN](https://www.linkedin.com/in/patrickhayo/?locale=en_US) - [Twitter](https://twitter.com/N00ky2010) - [Email](patrick.hayo@flsmidth.com)

Project Link: [https://github.com/adminph-de/docker-apache2-http-probe](https://github.com/adminph-de/docker-apache2-http-probe)


<!-- ACKNOWLAGEMENTS -->
## Acknowledgements

* [Janaina Laguardia Areal Hyldvang, Ph.D.](https://www.linkedin.com/in/janainahyldvang/)
* [Jakob Daugaard](https://www.linkedin.com/in/jakobdaugaard/?locale=en_US)
* [Senthil Kumar Bose](https://www.linkedin.com/in/senthil-kumar-bose-6900582/)
* [Javed Khan](https://www.linkedin.com/in/javed-khan-674863164/)


<!-- REFERENZES -->
## Referenzes

* [Containers on Windows documentation](https://docs.microsoft.com/en-us/virtualization/windowscontainers/)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[bug-report]: https://github.com/adminph-de/docker-apache2-http-probe/issues
[Request Feature]:https://github.com/adminph-de/docker-apache2-http-probe/issues
[contributors-shield]: https://img.shields.io/github/contributors/adminph-de/docker-apache2-http-probe.svg?style=flat-square
[contributors-url]: https://github.com/adminph-de/docker-apache2-http-probe/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/adminph-de/docker-apache2-http-probe.svg?style=flat-square
[forks-url]: https://github.com/adminph-de/docker-apache2-http-probe/network/members
[stars-shield]: https://img.shields.io/github/stars/adminph-de/docker-apache2-http-probe?style=flat-square
[stars-url]: https://github.com/adminph-de/docker-apache2-http-probe/stargazers
[issues-shield]: https://img.shields.io/github/issues/adminph-de/docker-apache2-http-probe.svg?style=flat-square
[issues-url]: https://github.com/adminph-de/docker-apache2-http-probe/issues
[license-shield]: https://img.shields.io/github/license/adminph-de/docker-apache2-http-probe.svg?style=flat-square
[license-url]: https://github.com/adminph-de/docker-apache2-http-probe/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/patrickhayo/?locale=en_US
[screenshot]: https://github.com/adminph-de/docker-apache2-http-probe/blob/74903e1d3da8910cb6d05497f9e3b6dd8ae29593/images/screen.png
