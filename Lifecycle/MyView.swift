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
    var name = ""

    override var frame: CGRect {
        didSet {
            if !name.isEmpty {
                Logger.shared.log("\(name) - frame changed: \(frame)")
            }
        }
    }

    convenience init(name: String, frame: CGRect) {
        Logger.shared.log("\(name) - init(frame: \(frame)")
        self.init(frame: frame)
        self.name = name
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    override func updateConstraints() {
        Logger.shared.log("\(name) - updateConstraints")
        super.updateConstraints()
    }

    override func draw(_ rect: CGRect) {
        Logger.shared.log("\(name) - draw(rect:)")
        super.draw(rect)
    }

    override func layerWillDraw(_ layer: CALayer) {
        Logger.shared.log("\(name) - layerWillDraw")
        super.layerWillDraw(layer)
    }

    override func layoutMarginsDidChange() {
        Logger.shared.log("\(name) - layoutMarginsDidChange")
        super.layoutMarginsDidChange()
    }

    override func safeAreaInsetsDidChange() {
        Logger.shared.log("\(name) - safeAreaInsetsDidChange")
        super.safeAreaInsetsDidChange()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        Logger.shared.log("\(name) - layoutSubviews")
        super.layoutSubviews()
    }

    override func setNeedsLayout() {
        Logger.shared.log("\(name) - setNeedsLayout")
        super.setNeedsLayout()
    }

    // MARK: - Layer delegates methods

    override func draw(_ layer: CALayer, in ctx: CGContext) {
        Logger.shared.log("\(name)🌅 - draw")
        super.draw(layer, in: ctx)
    }

    override func layoutSublayers(of layer: CALayer) {
        Logger.shared.log("\(name)🌅 - layoutSublayers")
        super.layoutSublayers(of: layer)
    }

    override func display(_ layer: CALayer) {
        Logger.shared.log("\(name)🌅 - display")
    }
}
