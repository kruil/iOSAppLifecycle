//
//  Logger.swift
//  Lifecycle
//
//  Created by Ilya Krupko on 23/10/2019.
//  Copyright © 2019 Ilya Krupko. All rights reserved.
//

import Foundation

class Logger {

    private let queue = DispatchQueue(label: "Logger")

    static let shared = Logger()

    private init() {}

    func log(_ message: String) {
        queue.async {
            self.print(message)
        }
    }

    func print(_ text: String) {
        let printForGitHub = true
        if printForGitHub {
            // console output to GitHub Readme.txt
            Swift.print(text, terminator: "<br>\n")
        } else {
            Swift.print(text, terminator: "\n")
        }
    }
}
