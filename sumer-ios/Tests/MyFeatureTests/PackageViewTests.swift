//
// PackageViewTests.swift
//
// Created by Luís Machado on 16/10/2024.
//

import Foundation
import SnapshotTesting
import MyTestSupport
import XCTest
@testable import MyFeature

final class PackageViewTests: SumerSnapshotTestCase {
    func testExample() throws {
        let view = MyFeature.PackageView()
        snapshotTest(view: view)
    }
}
