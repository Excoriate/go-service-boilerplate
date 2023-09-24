## 🔧 How to Install

The App go-service-boilerplate provides binary distributions for every release which are generated using [GoReleaser](https://goreleaser.com/). To install it, you can use the pre-built binaries which are available for Linux, Windows, and macOS:
1. Navigate to the [Releases](https://github.com/Excoriate/go-service-boilerplate/releases) page.
2. Download the archive for your respective OS and architecture.
3. Extract the archive.
4. Move the `go-service-boilerplate` binary into your `$PATH`.

Or, based on your OS. For Mac, you can use [Homebrew](https://brew.sh/):

```bash
brew tap Excoriate/homebrew-tap https://github.com/Excoriate/homebrew-tap.git
brew install go-service-boilerplate
```
>**NOTE**: There are compiled binaries available for most of the common platforms, including Windows. Check the
[Releases](https://github.com/Excoriate/go-service-boilerplate/releases) page.

### Linux/Mac via brew

```
brew tap Excoriate/homebrew-tap
brew install go-service-boilerplate
```

<details>
  <summary>RPM-based installation (RedHat/CentOS/Fedora)</summary>

**32 bit:**
  <!---x-release-please-start-version-->
  ```
  curl -LO https://github.com/Excoriate/go-service-boilerplate/releases/download/v0.3.14/go-service-boilerplate_386.rpm
  sudo rpm -ivh go-service-boilerplate_386.rpm
  ```
  <!---x-release-please-end-->

**64 bit:**

  <!---x-release-please-start-version-->
  ```
  curl -LO https://github.com/Excoriate/go-service-boilerplate/releases/download/v0.3.14/go-service-boilerplate_amd64.rpm
  sudo rpm -ivh -i go-service-boilerplate_amd64.rpm
  ```
  <!---x-release-please-end-->
</details>

<details>
  <summary>DEB-based installation (Ubuntu/Debian)</summary>

**32 bit:**
  <!---x-release-please-start-version-->
  ```
  curl -LO https://github.com/Excoriate/go-service-boilerplate/releases/download/v0.3.14/go-service-boilerplate_386.deb
  sudo dpkg -i go-service-boilerplate_386.deb
  ```
  <!---x-release-please-end-->
**64 bit:**

  <!---x-release-please-start-version-->
  ```
  curl -LO https://github.com/Excoriate/go-service-boilerplate/releases/download/v0.3.14/go-service-boilerplate_amd64.deb
  sudo dpkg -i go-service-boilerplate_amd64.deb
  ```
  <!---x-release-please-end-->
</details>

<details>

  <summary>APK-based installation (Alpine)</summary>

**32 bit:**
  <!---x-release-please-start-version-->
  ```
  curl -LO https://github.com/Excoriate/go-service-boilerplate/releases/download/v0.3.14/go-service-boilerplate_386.apk
  apk add go-service-boilerplate_386.apk
  ```
  <!---x-release-please-end-->
**64 bit:**
  <!---x-release-please-start-version-->
  ```
  curl -LO https://github.com/Excoriate/go-service-boilerplate/releases/download/v0.3.14/go-service-boilerplate_amd64.apk
  apk add go-service-boilerplate_amd64.apk
  ```
  <!---x-release-please-end-->x
</details>

<details>
  <summary>Failing Installation on WSL or Linux (missing gcc)</summary>
  When installing Homebrew on WSL or Linux, you may encounter the following error:

  ```
  ==> Installing go-service-boilerplate from go-service-boilerplate-ai/go-service-boilerplate Error: The following formula cannot be installed from a bottle and must be
  built from the source. go-service-boilerplate Install Clang or run brew install gcc.
  ```

If you install gcc as suggested, the problem will persist. Therefore, you need to install the build-essential package.
  ```
     sudo apt-get update
     sudo apt-get install build-essential
  ```
</details>


### Windows

* Download the latest Windows binaries of **go-service-boilerplate** from the [Release](https://github.com/Excoriate/go-service-boilerplate/releases)
  tab based on your system architecture.
* Extract the downloaded package to your desired location. Configure the system *path* variable with the binary location
