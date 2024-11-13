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

final class PackageViewTests: XCTestCase {
    func testExample() throws {
        let view = MyFeature.PackageView()
        SumerSnapshotTestCase().snapshotTest(view: view, devices: [SumerSnapshotTestCase.Device.iPadPro129Landscape])
    }
}
