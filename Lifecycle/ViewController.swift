//
//  ViewController.swift
//  Lifecycle
//
//  Created by Ilya Krupko on 12/09/2019.
//  Copyright © 2019 Ilya Krupko. All rights reserved.
//

import UIKit

class ChildViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}

class ViewController: UIViewController {

    let name = "🤴🏿"

    override func loadView() {
        Logger.shared.log("\n\(name) loadView")
        view = MyView(name: "🐯🐯", frame: CGRect(x: 0,y: 0,width: 100,height: 100))
        view.backgroundColor = .yellow
    }

    override func viewDidLoad() {
        Logger.shared.log("\n\(name) viewDidLoad")
        super.viewDidLoad()

        let myView = MyView(name: "🐸🐸🐸", frame: CGRect(x: 0,y: 0,width: 100,height: 100))
        myView.backgroundColor = .green
        view.addSubview(myView)

        let redView = MyView(name: "🦊🦊🦊🦊", frame: CGRect(x: 5,y: 5,width: 50,height: 50))
        redView.backgroundColor = .red
        myView.addSubview(redView)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        Logger.shared.log("\n📱 Device rotation --------------------\n")
        super.viewWillTransition(to: size, with: coordinator)
    }

    override func viewWillLayoutSubviews() {
        Logger.shared.log("\n\(name) viewWillLayoutSubviews")
        super.viewWillLayoutSubviews()
//        let screenBounds = UIScreen.main.bounds
//        view.frame = CGRect(x: 0, y: 0, width: screenBounds.width, height: screenBounds.height / 2)
    }

    override func viewDidLayoutSubviews() {
        Logger.shared.log("\n\(name) viewDidLayoutSubviews")
        super.viewDidLayoutSubviews()
    }

    override func viewWillAppear(_ animated: Bool) {
        Logger.shared.log("\n\(name) viewWillAppear")
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(_ animated: Bool) {
        Logger.shared.log("\n\(name) viewDidAppear")
        super.viewDidAppear(animated)
    }

    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        Logger.shared.log("\(name) didUpdateFocus")
        super.didUpdateFocus(in: context, with: coordinator)
    }

    override func viewLayoutMarginsDidChange() {
        Logger.shared.log("\(name) viewLayoutMarginsDidChange")
        super.viewLayoutMarginsDidChange()
    }

    override func viewSafeAreaInsetsDidChange() {
        Logger.shared.log("\(name) viewSafeAreaInsetsDidChange")
        super.viewSafeAreaInsetsDidChange()
    }
}

