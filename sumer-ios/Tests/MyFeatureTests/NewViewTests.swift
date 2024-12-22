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

        // Use updated syntax
        assertSnapshot(
            of: view,            // changed from 'matching' to 'of'
            as: .image,
            named: "Example-iPhoneSE",    // Add explicit name
            record: false,
            file: #file,
            testName: #function,
            line: #line
        )
    }
}
