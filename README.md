# undercover-test

Demo Rails app with Undercover GitHub App configured to find untested methods, blocks and classes in each commit.

Check out the the [sample PR catching an untested and changed codepath](https://github.com/twitchy-tortoise/undercover-test/pull/57), [`test_helper.rb`](https://github.com/twitchy-tortoise/undercover-test/blob/master/test/test_helper.rb) and [GitHub Actions build config](https://github.com/twitchy-tortoise/undercover-test/blob/c97f59502b6aa20587c503bb051e78edab648802/.github/workflows/test.yml) or go straight to https://undercover-ci.com to get started!

Coming soon:
- view coverage (with `enable_coverage_for_eval`)
- in-app dashboard with charts (passed/failed checks over time, untested methods detected over time, and more)
