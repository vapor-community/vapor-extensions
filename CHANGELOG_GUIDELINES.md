# Changelog Guidelines

Here you can find the general guidelines for maintaining the Changelog (or adding new entries). We follow the guidelines from [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) with few additions.

## Guiding Principles

* Changelogs are for _humans_, not machines.
* There should be an entry for every single version.
* The same types of changes should be grouped.
* Versions and sections should be linkable.
* The latest version comes first.
* The release date of each versions is displayed.
* Mention whether you follow [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

... with the following **VaporExtensions** specific additions:

* Keep an unreleased section at the top.
* Each release title should link to release's page.
* Add PR number and a GitHub tag at the end of each entry.
* Each breaking change entry should have **Breaking Change** label at the beginning of this entry.
* **Breaking Change** entries should be placed at the top of the section it's in.
* Entries under each category should be grouped by the type they extend.

## Types of changes

* **Added** for new features.
* **Changed** for changes in existing functionality.
* **Deprecated** for soon-to-be removed features.
* **Removed** for now removed features.
* **Fixed** for any bug fixes.
* **Security** in case of vulnerabilities.

---

## Example:

# [v1.0.0](https://github.com/vapor-community/vapor-extensions/releases/tag/1.0.0)

### Added

* **Future**
  * added `equal(to:)` to check if the current value is equal to the passed value. [#1](https://github.com/vapor-community/vapor-extensions/pull/1) by [@gperdomor](https://github.com/gperdomor).
  * added `equal(to:, or:)` to check if the current value is equal to the passed value. Throws the passed error if differ. [#1](https://github.com/vapor-community/vapor-extensions/pull/1) by [@gperdomor](https://github.com/gperdomor).
