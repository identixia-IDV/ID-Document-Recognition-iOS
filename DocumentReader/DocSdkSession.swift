import UIKit

enum AppSettings {
    /// Product capabilities — keep aligned with the Android sibling demo.
    static let wantRecognition = true
    static let wantAuthenticity = false

    static func authenticityMode(licenseAllows: Bool) -> String {
        _ = licenseAllows
        return "none"
    }
}

/// Session helper for still OCR / MRZ / barcode (recognition-only product).
/// Camera guide crops include margins — pass alreadyCropped=false so the engine
/// re-detects (Android CameraActivity). Gallery full-frame picks also use false.
enum DocSdkSession {
    @discardableResult
    static func startGallery() -> String {
        DocumentRecognitionSDK.startNewSession("{\"scenario\":\"FullProcess\",\"series\":false}")
    }

    /// Recognition only (no authenticity).
    /// - Returns: (json, optional user-facing deny message)
    static func recognize(
        front: UIImage,
        back: UIImage? = nil,
        alreadyCropped: Bool = false
    ) -> (String, String?) {
        let status = LicenseStatus.current()
        let deny = status.denyMessage(
            wantRecognition: AppSettings.wantRecognition,
            wantAuthenticity: AppSettings.wantAuthenticity
        )
        startGallery()
        let json = DocumentRecognitionSDK.documentRecognitionFront(
            front,
            back: back,
            alreadyCropped: alreadyCropped
        )
        return (json, deny)
    }
}
