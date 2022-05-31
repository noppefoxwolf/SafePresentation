public enum UIViewControllerPresentationError: Error {
    /// [Presentation] Attempt to present ChildViewController on RootViewController whose view is not in the window hierarchy.
    ///  - Note: Wait for constructing window hierarchy.
    case parentViewControllerIsNotInTheWindowHierarchy
    /// [Presentation] Attempt to present ChildViewController on RootViewController which is already presenting.
    ///  - Note:
    case alreadyPresenting
    /// NSInvalidArgumentException
    ///     - Note: Application tried to present modally a view controller ChildViewController that is already being presented by RootViewController.
    case alreadyBeingPresented
    /// NSGenericException
    ///     - Note: UIPopoverPresentationController should have a non-nil sourceView or barButtonItem set before the presentation occurs.
    case popoverNotHaveTarget
}
