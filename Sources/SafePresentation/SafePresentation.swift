import UIKit

public extension UIViewController {
    func throwingPresent(_ viewControllerToPresent: UIViewController, animated: Bool, completion: (() -> Void)? = nil) throws {
        if self.view.window == nil {
            throw UIViewControllerPresentationError.parentViewControllerIsNotInTheWindowHierarchy
        }
        if self.presentedViewController == viewControllerToPresent {
            throw UIViewControllerPresentationError.alreadyBeingPresented
        }
        if self.presentedViewController != nil {
            throw UIViewControllerPresentationError.alreadyPresenting
        }
        
        if let popoverPresentationController = viewControllerToPresent.popoverPresentationController {
            if popoverPresentationController.sourceView == nil || popoverPresentationController.barButtonItem == nil {
                throw UIViewControllerPresentationError.popoverNotHaveTarget
            }
        }
        present(viewControllerToPresent, animated: animated, completion: completion)
    }
}

enum UIViewControllerPresentationError: Error {
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
