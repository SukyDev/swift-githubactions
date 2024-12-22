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
        NSLog("🔍 STARTING TEST: testExample")
        let view = MyFeature.NewView()
        NSLog("📱 Created view: \(String(describing: view))")
        NSLog("🏷️ Test name: \(#function)")

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
