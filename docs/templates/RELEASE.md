## How to Release a New Version 🚀

Our Golang service template utilizes the power of [Release Please](https://github.com/google-github-actions/release-please-action) to automate the release process.

Here's how a fresh release for this service is performed:

1. Create and merge your Pull Requests as per usual. Ensure you follow the [Conventional Commit Messages](https://www.conventionalcommits.org/) format for clarity.

2. [Release Please](https://github.com/google-github-actions/release-please-action) automatically determines the semantic version bump from your commit messages and opens a Release PR.

3. The release PR includes updates to your changelog. Review it, approve and merge it!

4. On merging the release PR, [Release Please](https://github.com/google-github-actions/release-please-action) creates a new GitHub release and tags it. The new version number is in line with semantic versioning rules and is picked automatically from your commit messages.

>**NOTE**: It's crucial to write clear and concise commit messages, as [Release Please](https://github.com/google-github-actions/release-please-action) relies on them to decide the version bump. Make sure to follow the [Conventional Commit Messages](https://www.conventionalcommits.org/) format.

Voila! You have successfully released a new version of your Golang Service Template 🎉
