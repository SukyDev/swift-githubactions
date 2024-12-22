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
        assertSnapshot(matching: view, as: .image)
        snapshotTest(view: view)
    }
}
