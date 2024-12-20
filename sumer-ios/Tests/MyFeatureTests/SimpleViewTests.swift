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

final class SimpleViewTests: XCTestCase {
    func testExample() throws {
        #if canImport(UIKit)
        let view = MyFeature.SimpleView()
        SumerSnapshotTestCase().snapshotTest(view: view)
        #endif
    }
}
