# SafePresentation

Throw common warnings of ViewController presentation as error.

## Usage

Replace `present(_:_:_:)` to `throwingPresent(_:_:_:)`. 

```diff
let vc = ChildViewController()
- present(vc, animated: true)
+ try throwingPresent(vc, animated: true)
```

## Installation

### Swift Package Manager

- File > Swift Packages > Add Package Dependency
- Add https://github.com/noppefoxwolf/SafePresentation.git
- Select "Up to Next Major" with "0.0.1"

## Support warnings

- [x] `Attempt to present ChildViewController on RootViewController whose view is not in the window hierarchy.`
- [x] `Attempt to present ChildViewController on RootViewController which is already presenting.`

## Support exception

- [x] `Application tried to present modally a view controller ChildViewController that is already being presented by RootViewController.`
- [x] `UIPopoverPresentationController should have a non-nil sourceView or barButtonItem set before the presentation occurs.` 

## Author

[noppefoxwolf](https://twitter.com/noppefoxwolf)

## License

MIT
