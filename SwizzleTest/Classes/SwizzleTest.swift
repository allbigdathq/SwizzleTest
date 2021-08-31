
import UIKit

open class SwizzleTest {
    public static let SHARED : SwizzleTest = SwizzleTest()

    private init() {
    }
    
    private func getPackageName() -> String {
        return "SwizzleTest"
    }
}

extension UINavigationController {
    // allbigdat pushViewController
    open class func allbigdatSwizzlePushViewController2(){
        let originalSelector = #selector(pushViewController)
        let swizzleSelector = #selector(allbigdatPushViewController2)

        guard
            let originMethod = class_getInstanceMethod(UINavigationController.self, originalSelector),
            let swizzleMethod = class_getInstanceMethod(UINavigationController.self, swizzleSelector)
            else { return }

        method_exchangeImplementations(originMethod, swizzleMethod)
    }

    @objc public func allbigdatPushViewController2(_ viewController: UIViewController, animated: Bool) {
        self.allbigdatPushViewController2(viewController, animated: animated)

        // storyboard framework code
        print("test swizzle push")
    }

    // allbigdat popViewController
    open class func allbigdatSwizzlePopViewController2(){
        let originalSelector = #selector(popViewController)
        let swizzleSelector = #selector(allbigdatPopViewController2)

        guard
            let originMethod = class_getInstanceMethod(UINavigationController.self, originalSelector),
            let swizzleMethod = class_getInstanceMethod(UINavigationController.self, swizzleSelector)
            else { return }

        method_exchangeImplementations(originMethod, swizzleMethod)
    }

    @objc public func allbigdatPopViewController2(animated: Bool) -> UIViewController? {
        let result: UIViewController? = self.allbigdatPopViewController2(animated: animated)

        // storyboard framework code
        print("test swizzle pop")

        return result
    }


    // allbigdat popToViewController
    open class func allbigdatSwizzlePopToViewController2(){
        let originalSelector = #selector(popToViewController)
        let swizzleSelector = #selector(allbigdatPopToViewController2)

        guard
            let originMethod = class_getInstanceMethod(UINavigationController.self, originalSelector),
            let swizzleMethod = class_getInstanceMethod(UINavigationController.self, swizzleSelector)
            else { return }

        method_exchangeImplementations(originMethod, swizzleMethod)
    }

    @objc public func allbigdatPopToViewController2(_ viewController: UIViewController, animated: Bool) -> [UIViewController]? {
        let result: [UIViewController]? = self.allbigdatPopToViewController2(viewController, animated: animated)

        // storyboard framework code
        print("test swizzle pop to view")

        return result
    }


    // allbigdat popRootViewController
    open class func allbigdatSwizzlePopToRootViewController2(){
        let originalSelector = #selector(popToRootViewController)
        let swizzleSelector = #selector(allbigdatPopToRootViewController2)

        guard
            let originMethod = class_getInstanceMethod(UINavigationController.self, originalSelector),
            let swizzleMethod = class_getInstanceMethod(UINavigationController.self, swizzleSelector)
            else { return }

        method_exchangeImplementations(originMethod, swizzleMethod)
    }

    @objc public func allbigdatPopToRootViewController2(animated: Bool) -> [UIViewController]? {
        let result: [UIViewController]? = self.allbigdatPopToRootViewController2(animated: animated)

        // storyboard framework code
        print("test swizzle pop to pop root")

        return result
    }


    // allbigdat setViewController
    open class func allbigdatSwizzleSetViewControllers(){
        let originalSelector = #selector(setViewControllers)
        let swizzleSelector = #selector(allbigdatSetViewControllers)

        guard
            let originMethod = class_getInstanceMethod(UINavigationController.self, originalSelector),
            let swizzleMethod = class_getInstanceMethod(UINavigationController.self, swizzleSelector)
            else { return }

        method_exchangeImplementations(originMethod, swizzleMethod)
    }

    @objc public func allbigdatSetViewControllers(_ viewControllers: [UIViewController], animated: Bool) {
        self.allbigdatSetViewControllers(viewControllers, animated: animated)

        // storyboard framework code
        print("swizzle test pop set view")
    }
}

extension UIViewController {
    // allbigdat loadView
    open class func allbigdatSwizzleLoadView2(){
        let originalSelector = #selector(loadView)
        let swizzleSelector = #selector(allbigdatLoadView2)

        guard
            let originMethod = class_getInstanceMethod(UIViewController.self, originalSelector),
            let swizzleMethod = class_getInstanceMethod(UIViewController.self, swizzleSelector)
            else { return }

        method_exchangeImplementations(originMethod, swizzleMethod)
    }

    @objc public func allbigdatLoadView2() {
        self.allbigdatLoadView2()
        print("loadView test swizzle")
    }
}
