<p align="center">
  <img alt="Logo" src="docs/logo/logo.png" height="140" />
  <h3 align="center">GoService Boilerplate ⚡️</h3>
  <p align="center">A simple, opinionated and battle-tested boilerplate for <b>services/microservices/fullstack</b> Go apps.</p>
</p>

---
![GitHub release (latest by date)](https://img.shields.io/github/v/release/Excoriate/go-service-boilerplate)
[![Software License](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](LICENSE)
[![Powered By: GoReleaser](https://img.shields.io/badge/powered%20by-goreleaser-green.svg?style=flat-square)](https://github.com/goreleaser)
[![Docker Build](https://github.com/Excoriate/go-service-boilerplate/actions/workflows/docker-build.yml/badge.svg)](https://github.com/Excoriate/go-service-boilerplate/actions/workflows/docker-build.yml)
[![Go Build](https://github.com/Excoriate/go-service-boilerplate/actions/workflows/go-build.yml/badge.svg)](https://github.com/Excoriate/go-service-boilerplate/actions/workflows/go-build.yml)
[![Go linter](https://github.com/Excoriate/go-service-boilerplate/actions/workflows/go-ci-lint.yaml/badge.svg)](https://github.com/Excoriate/go-service-boilerplate/actions/workflows/go-ci-lint.yaml)
[![Go unit tests](https://github.com/Excoriate/go-service-boilerplate/actions/workflows/go-ci-test.yml/badge.svg)](https://github.com/Excoriate/go-service-boilerplate/actions/workflows/go-ci-test.yml)
[![Lint Docker](https://github.com/Excoriate/go-service-boilerplate/actions/workflows/docker-hadolint.yml/badge.svg)](https://github.com/Excoriate/go-service-boilerplate/actions/workflows/docker-hadolint.yml)
[![Yamllint GitHub Actions](https://github.com/Excoriate/go-service-boilerplate/actions/workflows/yaml-linter.yml/badge.svg)](https://github.com/Excoriate/go-service-boilerplate/actions/workflows/yaml-linter.yml)

---
## Getting Started 🚦
Use this repository as a [GitHub Template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template) to create your own service/app:

- [ ] Clone this repository and start adding your command and flag definitions. Utilize pre-installed AWS adapters and included or remove the included utilities to kickstart your development.
- [ ] This template is called `go-service-boilerplate`. You can rename it by changing the name using your favourite tool, or just using our IDE with a simple `Ctrl+Shift+R` and replace all the occurrences of `go-service-boilerplate` with your new name (or including the org/`go-service-boilerplate`) if applicable.
- [ ] Configure [PreCommit](https://pre-commit.com/) hooks by running `task pre-commit-init`. This will install the pre-commit hooks in your local repository.
- [ ] Configure [Air](https://github.com/cosmtrek/air) for live reloading by running `task air-setup` (or `make air-setup`).
- [ ] Update the `LICENSE.md` file with your own license.
- [ ] Verify that everything is working as expected by running `task go-ci` (or `make go-ci`).
>**NOTE**: This template includes a [MakeFile](Makefile) and a [TaskFile](Taskfile.yml) with the necessary (best practices) configuration to build and lint your App. Both tools include the same capability, so you can choose the one you prefer.
---
## 📚 Documentation
Documenting your App is relevant. This repository includes a [docs](docs/templates/) folder with a template for the documentation of your App. You can use it as a starting point for your own documentation. It includes:
- 📃 `README.md` with a standard structure for a App repository.
- 📃 `RELEASE.md` file with the release instructions for your App.
- 📃 `CONTRIBUTING.md` file with the instructions for contributing to your App.
- 📃 `CODE_OF_CONDUCT.md` file with the code of conduct for your App.
- 📃 `LICENSE.md` file with the license for your App.
```bash
tree -L 3  docs/
docs/
├── about_docs.md
└── templates
    ├── CODE_OF_CONDUCT.md
    ├── CONTRIBUTING.md
    ├── RELEASE.md
    ├── LICENSE
    └── README.md
```
>**NOTE**: It's recommended to move these files accordingly, nevertheless it's strongly encouraged to keep a concise documentation structure, keeping the `README.md` simple, concise, and store the more detailed documentation in the `docs` folder.
For more details about the document templates, see [this](docs/about_docs.md).

---
## Features 🧩

* Auto-scan host environment variables (useful for `AWS`,`Terraform` and other common use cases).
* Import env vars from dotfiles (`.env`) 📄
* Leverages built-in AWS adapters ([Golang SDK v2](https://aws.github.io/aws-sdk-go-v2/))
* Ready-to-use utilities for common tasks 🧰. See the [pkg](./pkg) folder for more details.
* Simple API for adding a [Fiber](https://github.com/gofiber) server 🚀 (Web, Rest or a custom one).
* Built-in [Docker](https://www.docker.com/) support 🐳. Check the `./container` folder for more details.
* Out-of-the-box [GitHub Actions](https://docs.github.com/en/actions) workflows for CI/CD 🚀
* Built-in [PreCommit](https://pre-commit.com/) hooks for linting and formatting 🧹
* Server modes that are ready for either _dev_ or _prod_ environments 🚀
* Set of middlewares for [Fiber](https://docs.gofiber.io/api/middleware/) 🧩 (CORS, compression, etc.)
* The latest [sLog](https://pkg.go.dev/golang.org/x/exp/slog) for logging 📝

### Adapters 🧩
Adapters are known also as `interfaces/drivers`. They can plug into the `App` and provide additional functionality. This template comes with the following:
* [AWS](https://github.com/aws/aws-sdk-go-v2) - AWS SDK v2 for Golang.
* [SuPaBase](https://supabase.com/) - Simple client for Supabase.
* [GitHub](https://github.com/google/go-github) - Simple client for GitHub. (Coming soon 🚧)
* [OpenAI](https://openai.com/) - Simple client for OpenAI. (Coming soon 🚧)
---

## Tooling 🧑‍🔧

This template is equipped with an array of tools to maintain a high standard of code quality and accelerate the development process:

* [Precommit](https://pre-commit.com/) framework for managing and maintaining multi-language pre-commit hooks
* [Taskfile](https://taskfile.dev/#/) is a simpler way to automate tasks
* [Makefile](https://www.gnu.org/software/make/) for managing build workflow
* [GolangCI-linter](https://golangci-lint.run/) for consolidated linting to improve code quality
* [GoReleaser](https://goreleaser.com/) for easy binary release management
* [Docker](https://www.docker.com/) for containerization
* [ShellCheck](https://www.shellcheck.net/) for shell script linting
* [Release please](https://github.com/googleapis/release-please) for automated releases
>**NOTE**: For pre-commit, ensure you're running `task pre-commmit-init` to add the pre-configured hooks into your `git` hooks. This will ensure that the code is linted and formatted before committing it. Also, there are other linters included (yaml, docker, shell, md, etc.).

---
## Roadmap 🗓️
* [ ] Add a built-in [GitHub](https://github.com/google/go-github)[GitHub](https://github.com/google/go-github) adapter for generating App documentation and/or other purposes.
* [ ] Add an [OpenAI](https://openai.com/) adapter for generating App documentation and/or other purposes.

## Contributing
Please read our [contributing guide](./CONTRIBUTING.md). All issues, pull requests and GitHub stars are welcome! Happy coding! 💻


## Community
Find me in:

- 📧 [Email](mailto:alex_torres@outlook.com)
- 🧳 [Linkedin](https://www.linkedin.com/in/alextorresruiz/)


<a href="https://github.com/Excoriate/go-service-boilerplate/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Excoriate/go-service-boilerplate" />
</a>
