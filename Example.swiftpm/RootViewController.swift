import UIKit
import SwiftUI
import SafePresentation

struct RootView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        RootViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

class RootViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        /// parentViewControllerIsNotInTheWindowHierarchy Demo
//        let vc = ChildViewController()
//        do {
//            try throwingPresent(vc, animated: true)
//        } catch {
//            print(error)
//        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        /// alreadyPresenting Demo
//        let vc = ChildViewController()
//        try! throwingPresent(vc, animated: true) {
//            do {
//                let vc2 = ChildViewController()
//                try self.throwingPresent(vc2, animated: true)
//            } catch {
//                print(error)
//            }
//        }
        
        /// alreadyBeingPresented Demo
//        let vc = ChildViewController()
//        try! throwingPresent(vc, animated: true)
//        try! throwingPresent(vc, animated: true)
        
        let vc = UIActivityViewController(activityItems: ["test"], applicationActivities: nil)
//        present(vc, animated: true)
        try! throwingPresent(vc, animated: true)
    }
}

class ChildViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
    }
}

