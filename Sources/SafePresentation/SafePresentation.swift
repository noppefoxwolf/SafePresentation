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

