import Foundation
import Capacitor
import LRBOBSDK

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(DemoHelperPlugin)
public class DemoHelperPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "DemoHelperPlugin"
    public let jsName = "DemoHelper"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = DemoHelper()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        
        DispatchQueue.main.async {
            let vc = CustomViewController(sso: value)
            self.bridge?.viewController?.present(vc, animated: true)
        }
        
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}

class CustomViewController: UIViewController, LRSDKDelegate {
    func isUserAlive(isUserActive: Bool) {
        
    }
    
    func userLogout() {
        
    }
    
    func backToHome() {
        
    }
    
    func configurationMpinCallBack(orderId: String, requestId: String) {
        
    }
    
    let sso: String
    
    init(sso: String) {
        self.sso = sso
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LRSDKConfigurator.launchSDK(ssoToken: sso, delegate: self)
    }
}

