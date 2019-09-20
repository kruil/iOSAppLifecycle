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
        print("\(name) - draw(rect:)")
        super.draw(rect)
    }

    override func layerWillDraw(_ layer: CALayer) {
        print("\(name) - layerWillDraw")
        super.layerWillDraw(layer)
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

    override func layoutSubviews() {
        print("\(name) - layoutSubviews")
        super.layoutSubviews()
    }

    // MARK: - Layer delegates methods

    override func draw(_ layer: CALayer, in ctx: CGContext) {
        print("\(name)🌅 - draw")
        super.draw(layer, in: ctx)
    }

    override func layoutSublayers(of layer: CALayer) {
        print("\(name)🌅 - layoutSublayers")
        super.layoutSublayers(of: layer)
    }

    override func display(_ layer: CALayer) {
        print("\(name)🌅 - display")
    }
}
