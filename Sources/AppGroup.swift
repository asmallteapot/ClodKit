import Foundation

@objc public final class AppGroup: NSObject {
	/// the app group identifier
	public let identifier: String

    /// canonicalized string representing the container URL's filesystem path
    public let containerPath: String

    /// the shared container URL for the app group
    public let containerURL: URL

    /// the user defaults for the app group
	public let userDefaults: UserDefaults

	public init?(_ identifier: String) {
		self.identifier = identifier

        // get the container URL first
        let fileManager = FileManager.default
        guard let containerURL = fileManager.containerURL(forSecurityApplicationGroupIdentifier: identifier) else {
            // on iOS-derived platforms, if the app group identifier is invalid,
            // the FileManager method will return nil, so we can fail here.
            return nil
        }
        self.containerURL = containerURL

        // canonicalize the container URL to a filesystem path
        guard let containerPath = self.containerURL.path.removingPercentEncoding else {
            // i don’t think this should happen...?
            return nil
        }
        self.containerPath = containerPath

        // on macOS, if the app group identifier is invalid, the FileManager
        // method will still return a valid URL. test for access to ensure the
        // identifier is valid and the container is usable.
        #if os(OSX)
            if !fileManager.fileExists(atPath: self.containerPath, isDirectory: nil) {
                return nil
            }
        #endif

        // now that we know the group identifier is valid, get its user defaults
        guard let userDefaults = UserDefaults(suiteName: identifier) else {
            return nil
        }
        self.userDefaults = userDefaults
	}
}
