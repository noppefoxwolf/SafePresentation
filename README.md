# SafePresentation

Throw common warnings of ViewController presentation as error.

## Usage

Replace `present(_:_:_:)` to `throwingPresent(_:_:_:)`. 

```swift_diff
let vc = ChildViewController()
- present(vc, animated: true)
+ try throwingPresent(vc, animated: true)
```

## Support warnings

- [x] `Attempt to present ChildViewController on RootViewController whose view is not in the window hierarchy.`
- [x] `Attempt to present ChildViewController on RootViewController which is already presenting.`

## Author

[noppefoxwolf](https://twitter.com/noppefoxwolf)

## License

MIT
