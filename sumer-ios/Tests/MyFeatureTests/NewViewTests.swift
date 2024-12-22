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

        print("Current directory: \(FileManager.default.currentDirectoryPath)")
        if let filePath = #file.split(separator: "/").last {
            print("Test file: \(filePath)")
        }

        // Add debug prints
        assertSnapshot(matching: view,
                       as: .image,
                       named: "NewView",
                       record: false,
                       file: #file,
                       testName: #function,
                       line: #line)
        snapshotTest(view: view)
    }
}
