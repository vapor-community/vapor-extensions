# VaporExtensions

VaporExtensions is a collection of **Swift extensions**, with handy methods, syntactic sugar, and performance improvements for wide range of Vapor data types and classes.

### [Whats New in v1.0.0?](https://github.com/vapor-community/vapor-extensions/blob/master/CHANGELOG.md#v100)

## Requirements:

* Vapor 3.0.0
* Swift 4.1+

## Installation

You can use <a href="https://swift.org/package-manager">The Swift Package Manager</a> to install <code>VaporExtensions</code> by adding the proper description to your <code>Package.swift</code> file:

<pre><code class="swift language-swift">import PackageDescription

let package = Package(
    name: "YOUR_PROJECT_NAME",
    targets: [],
    dependencies: [
        .package(url: "https://github.com/vapor-community/vapor-extensions.git", from: "1.0.0"),
    ]
)
</code></pre>

<p>Note that the <a href="https://swift.org/package-manager">Swift Package Manager</a> is still in early design and development, for more information checkout its <a href="https://github.com/apple/swift-package-manager">GitHub Page</a></p>

## List of included extensions

<ul>
<li><a href="https://github.com/vapor-community/async-extensions"><code>Async Extensions</code></a></li>
<li><a href="https://github.com/vapor-community/engine-extensions"><code>Engine Extensions</code></a></li>
</ul>

## How cool is this?

VaporExtensions is a library of **properties and methods**, designed to extend Vapor's functionality and productivity, staying faithful to the original Swift API design guidelines.

## Documentation

Since this package is a group of other extensions package, you can check the documentation on each extension package repository.

## Get involved:

We want your feedback.
Please refer to [contributing guidelines](https://github.com/vapor-community/vapor-extensions/tree/master/CONTRIBUTING.md) before participating.

## Slack Channel: [![Slack](http://vapor.team/badge.svg)](http://vapor.team)

It is always nice to talk with other people using VaporExtensions and exchange experiences, so come [join our Slack channel](http://vapor.team).

## License

VaporExtensions is released under an MIT license. See [LICENSE](LICENSE) for more information.
