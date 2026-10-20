// swift-tools-version: 5.9
import PackageDescription

// DocumentReader.xcodeproj keeps linking documentrecognitionsdk.framework beside the project.
// This package is the customer install and is not added to that project.
// Replace the zero checksum after publishing documentrecognitionsdk.xcframework.zip on GitHub Releases.
let package = Package(
    name: "IdentixiaDocumentReader",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "IdentixiaDocumentReader", targets: ["documentrecognitionsdk"])
    ],
    targets: [
        .binaryTarget(
            name: "documentrecognitionsdk",
            url: "https://github.com/identixia-IDV/ID-Document-Recognition-iOS/releases/latest/download/documentrecognitionsdk.xcframework.zip",
            checksum: "0000000000000000000000000000000000000000000000000000000000000000"
        ),
    ]
)
