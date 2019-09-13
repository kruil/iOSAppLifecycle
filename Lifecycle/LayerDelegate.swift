//
//  LayerDelegate.swift
//  Lifecycle
//
//  Created by Ilya Krupko on 13/09/2019.
//  Copyright © 2019 Ilya Krupko. All rights reserved.
//

import Foundation
import UIKit


class LayerDelegate: NSObject, CALayerDelegate {

    var viewName = ""

    init(viewName: String) {
        super.init()
        self.viewName = viewName
    }

    func draw(_ layer: CALayer, in ctx: CGContext) {
        print("\(viewName)🌅 - draw")
    }

    func display(_ layer: CALayer) {
        print("\(viewName)🌅 - display")
    }

    func layoutSublayers(of layer: CALayer) {
        print("\(viewName)🌅 - layoutSublayers")
    }
}
