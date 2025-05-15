import Foundation

@objc public class DemoHelper: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
