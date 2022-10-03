# Templat PHP-Nginx-Docker

<details open>
<summary><h2> :scroll: Overview </h2></summary>

Template for new projects using php and nginx inside docker containers

</details>

<details open>
<summary><h2> :desktop_computer: Start Project </h2></summary>

First clone the project:

```
git clone https://github.com/www/www.git
```

Make the build

_:bulb: NOTE: Before next step, check the variables in `.env` file_

```
make build
```

_:bulb: NOTE: If the project is already compiled then just run the `make up` command_

</details>

<details open>
<summary><h2> :hammer_and_pick: Tools </h2></summary>

-   [EditorConfig](https://editorconfig.org/)
-   [Docker](https://www.docker.com/)
-   [NGINX](https://www.nginx.com/)
-   [PHP](https://www.php.net/)
-   [Composer](https://getcomposer.org/)
-   [Makefile](https://www.gnu.org/software/make/manual/make.html)

</details>

<details open>
<summary><h2> :open_file_folder: Folder Structure </h2></summary>

```
.
├── .editorconfig
├── .env.example
├── .gitignore
├── .vscode
│   └── launch.json
├── LICENSE
├── Makefile
├── README.md
├── composer.json
├── docker
│   ├── docker-compose.yml
│   ├── nginx
│   │   └── default.conf
│   └── php
│       ├── Dockerfile
│       └── xdebug.ini
└── public
    └── index.php
```

</details>

<details open>
<summary><h2> :memo: License </h2></summary>

The [MIT License](LICENSE) (MIT)

</details>

<details open>
<summary><h2> :smiley_cat: Author </h2></summary>

-   [@walternascimentobarroso](https://walternascimentobarroso.github.io/)

</details>

---

Made with &nbsp;❤️&nbsp;
