//
//  NewViewTests.swift
//  sumer-ios
//
//  Created by Luís Machado on 14/11/2024.
//

import Foundation
import SnapshotTesting
import MyTestSupport
import XCTest
@testable import MyFeature

final class NewViewTests: SumerSnapshotTestCase {
    func testExample() throws {
        let view = MyFeature.NewView()

        // Get the expected snapshot path
        let fileUrl = URL(fileURLWithPath: #file)
        let fileName = fileUrl.deletingPathExtension().lastPathComponent
        let snapshotPath = "Tests/ReferenceImages/\(fileName)"

        // Force a failure with the path information
        XCTFail("""
            DEBUG INFO:
            Test file: \(#file)
            Expected snapshot path: \(snapshotPath)
            Does path exist: \(FileManager.default.fileExists(atPath: snapshotPath))
            Current directory: \(FileManager.default.currentDirectoryPath)
            """)

        assertSnapshot(
            matching: view,
            as: .image,
            record: false,
            file: #file,
            testName: #function,
            line: #line
        )
    }
}
