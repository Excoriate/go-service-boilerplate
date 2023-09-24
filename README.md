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
- [ ] Configure [air](https://github.com/cosmtrek/air) for live reloading by running `task air-setup` (or `make air-setup`).
- [ ] Update the `LICENSE.md` file with your own license.
- [ ] Verify that everything is working as expected:
```bash
# If you want to use the MakeFile included.
make go-ci

# Or, if you're using Taskfile
task go-ci
```
- [ ] After this step, you should be able to run your service:
```bash
# TaskFile wraps the binary in a task, so you can run it like this:
task go-run

# Or using a make file target
make go-run
```
>**NOTE**: This template includes a [MakeFile](Makefile) and a [TaskFile](Taskfile.yml) with the necessary (best practices) configuration to build and lint your App. Both tools include the same capability, so you can choose the one you prefer.

---

## 🔧 Release your App
The release of your App is done using [GoReleaser](https://goreleaser.com/). For MacOs, you can use [Homebrew](https://brew.sh/). This template already includes a `.goreleaser.yml` file with the necessary (best practices) configuration to release your App.
In addition, a [GitHub Action](.github/workflows/release.yml) is included to automate the release process.
```yaml
  goreleaser:
    if: needs.release-please.outputs.releases_created == 'true'
    permissions:
      contents: write
    needs:
      - release-please
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@8f4b7f84864484a7bf31766abe9204da3cbe65b3 # v3
        with:
          fetch-depth: 0
      - name: Set up Go
        uses: actions/setup-go@4d34df0c2316fe8122ab82dc22947d607c0c91f9 # v4
        with:
          go-version: '1.20'
      - name: Download Syft
        uses: anchore/sbom-action/download-syft@422cb34a0f8b599678c41b21163ea6088edb2624 # v0.14.1
      - name: Run GoReleaser
        uses: goreleaser/goreleaser-action@f82d6c1c344bcacabba2c841718984797f664a6b # v4
        with:
          distribution: goreleaser
          version: latest
          args: release --clean
        env:
          GITHUB_TOKEN: ${{secrets.GH_HOMEBREW_TOKEN}}

```
>**NOTE**: In order to use the GitHub Action, you need to create a `GH_HOMEBREW_TOKEN` secret in your repository with enough permissions to read and write into the `tap` repository.


---
## 📚 Documentation
Documenting your App is relevant. This repository includes a [docs](docs/templates/) folder with a template for the documentation of your App. You can use it as a starting point for your own documentation. It includes:
- 📃 `README.md` with a standard structure for a App repository.
- 📃 `INSTALLATION.md` file with the installation instructions for your App.
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
    ├── INSTALLATION.md
    ├── LICENSE
    └── README.md
```
>**NOTE**: It's recommended to move these files accordingly, nevertheless it's strongly encouraged to keep a concise documentation structure, keeping the `README.md` simple, concise, and store the more detailed documentation in the `docs` folder.
For more details about the document templates, see [this](docs/about_docs.md).

---
## Features 🧩

* Out-of-the-box environment variable management 🌳
* Auto-scan host environment variables for `AWS` and `Terraform` credentials 📄
* Import env vars from dotfiles (`.env`) 📄
* Leverages built-in AWS adapters ([Golang SDK v2](https://aws.github.io/aws-sdk-go-v2/))
* Ready-to-use utilities for common tasks 🧰. See the [pkg](pkg) folder for more details.
* Built-in [Docker](https://www.docker.com/) support 🐳
* Out-of-the-box [GitHub Actions](https://docs.github.com/en/actions) workflows for CI/CD 🚀
* Built-in [PreCommit](https://pre-commit.com/) hooks for linting and formatting 🧹
* Out-of-the-box support for output data in `yaml`, `json` or `tables`🤖

### Safely share the `AppAppent` to `subCommands` 🤝
On each subcommand (at the parent level, which means, those that are in the top of your `pkg`), ensure you're implementing the `GetAppent` function:
```go
func GetAppent(cmd *cobra.Command) *App.Appent {
	ctx := cmd.Context().Value(Apputils.GetCtxKey())
	if ctx == nil {
		log.Fatal("Unable to get the Appent context.")
	}
	Appent, ok := ctx.(*App.Appent)
	if !ok {
		log.Fatal("Unable to assert Appent.")
	}
	return Appent
}
```
### Adapters 🧩
Adapters are known also as `Appents`. They can plug into the `AppAppent` and provide additional functionality. This template includes a subcommand called `aws-ecs` in the `cmd/example` package. It's a subcommand that use the `aws` adapter to read the `ECS` clusters in your account. It's a good example of how to use the `AppAppent` and the `aws` adapter. See [here](https://github.com/Excoriate/go-service-boilerplate/blob/4caff5eade39799fb3945e52d14f937251233e9a/cmd/example/aws.go#L68-L68)

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
* [ ] Add a built-in `GitHub` adapter.
* [ ] Add a App for quickly bootstrapping a new App
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
