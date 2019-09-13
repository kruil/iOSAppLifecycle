//
//  MyView.swift
//  Lifecycle
//
//  Created by Ilya Krupko on 13/09/2019.
//  Copyright © 2019 Ilya Krupko. All rights reserved.
//

import Foundation
import UIKit


class MyView: UIView {
    var name = "view"
    var layerDelegate: LayerDelegate!

    convenience init(name: String, frame: CGRect) {
        print("\(name) - init(frame:)")
        self.init(frame: frame)
        self.name = name
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    override func updateConstraints() {
        print("\(name) - updateConstraints")
        super.updateConstraints()
    }

    override func draw(_ rect: CGRect) {
        print("\(name) - draw")
        super.draw(rect)
    }

    override func layerWillDraw(_ layer: CALayer) {
        print("\(name) - layerWillDraw")
        super.layerWillDraw(layer)
        layerDelegate = LayerDelegate(viewName: name)
        layer.delegate = layerDelegate
    }

    override func layoutMarginsDidChange() {
        print("\(name) - layoutMarginsDidChange")
        super.layoutMarginsDidChange()
    }

    override func safeAreaInsetsDidChange() {
        print("\(name) - safeAreaInsetsDidChange")
        super.safeAreaInsetsDidChange()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
