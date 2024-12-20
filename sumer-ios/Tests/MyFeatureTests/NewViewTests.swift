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

final class NewViewTests: XCTestCase {
    func testExample() throws {
        #if canImport(UIKit)
        let view = MyFeature.NewView()
        SumerSnapshotTestCase().snapshotTest(view: view)
        #endif
    }
}
