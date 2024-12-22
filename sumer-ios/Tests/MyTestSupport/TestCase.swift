//
//  TestCase.swift
//
//
//  Created by Luís Machado on 24/09/2024.
//

import XCTest

open class TestCase: XCTestCase {
    public override func setUp() {
        super.setUp()

        NSLog("🔍 TEST SETUP BEGIN")
        NSLog("📂 Current Directory: \(FileManager.default.currentDirectoryPath)")
        NSLog("📄 Test File Location: \(#file)")

        do {
            let contents = try FileManager.default.contentsOfDirectory(atPath: "Tests/ReferenceImages")
            NSLog("📂 ReferenceImages contents: \(contents)")

            if let newViewContents = try? FileManager.default.contentsOfDirectory(atPath: "Tests/ReferenceImages/NewView") {
                NSLog("📂 NewView contents: \(newViewContents)")
            }
        } catch {
            NSLog("❌ Error reading directory: \(error)")
        }
    }
}
