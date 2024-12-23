//
//  SimpleViewTests.swift
//  sumer-ios
//
//  Created by Luís Machado on 13/11/2024.
//

import Foundation
import SnapshotTesting
import MyTestSupport
import XCTest
@testable import MyFeature

final class SimpleViewTests: SumerSnapshotTestCase {
    func testExample() throws {
        let view = MyFeature.SimpleView()
        snapshotTest(view: view)
    }
}
