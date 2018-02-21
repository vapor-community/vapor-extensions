# VaporExtensions Examples

VaporExtensions is a library of **properties and methods**, designed to extend Vapor's functionality and productivity, staying faithful to the original API design guidelines of Swift.

Here are some examples:

### Future Extensions:

```swift
// Register user
func register(_ req: Request, body: RegisterRequest) throws -> Future<User> {
    return try User.query(on: req)
        .filter(\User.email == body.email.lowercased())
        .count()
        .equal(to: 0, or: Abort(.badRequest, reason: "User exists!"))
        .flatMap(to: User.self) { incoming in
            let hasher = try req.make(BCryptHasher.self)
            let hashedPassword = try hasher.make(body.password)
            let user = User(name: body.name, email: body.email, password: hashedPassword)
            return user.save(on: req)
    }
}
```

[Check All Future Extensions!](https://github.com/vapor-community/vapor-extensions/blob/master/Sources/VaporExtensions/FutureExtensions.swift)

---
