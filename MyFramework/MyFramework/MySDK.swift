import Foundation

public class MySDK {
    
    public init() {}
    
    public func getMainBundleId() -> String? {
        Bundle.main.bundleIdentifier
    }
    
}
