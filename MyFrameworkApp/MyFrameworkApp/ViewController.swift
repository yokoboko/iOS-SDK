import UIKit
import MyFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let sdk = MySDK()
        print(String(describing: sdk.getMainBundleId()))
    }

}
