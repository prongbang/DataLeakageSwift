#if !os(macOS)
import UIKit

// How to use
//
// import DataLeakageSwift
//
// class AppDelegate: FlutterAppDelegate {
//
//    override func applicationDidBecomeActive(_ application: UIApplication) {
//        DataLeakageSwift.removeBlurScreen()
//    }
//
//    override func applicationWillResignActive(_ application: UIApplication) {
//        DataLeakageSwift.blurScreen()
//    }
//
// }
public struct DataLeakageSwift {
    weak var screen : UIView? = nil
    
    func blurScreen(style: UIBlurEffect.Style = UIBlurEffect.Style.regular) {
        screen = UIScreen.main.snapshotView(afterScreenUpdates: false)
        let blurEffect = UIBlurEffect(style: style)
        let blurBackground = UIVisualEffectView(effect: blurEffect)
        screen?.addSubview(blurBackground)
        blurBackground.frame = (screen?.frame)!
        window?.addSubview(screen!)
    }

    func removeBlurScreen() {
        screen?.removeFromSuperview()
    }
}
#endif
