//
//  ViewController.swift
//  Lifecycle
//
//  Created by Ilya Krupko on 12/09/2019.
//  Copyright © 2019 Ilya Krupko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let name = "🤴🏿"

    override func loadView() {
        print("\n\(name) loadView")
        view = MyView(name: "🐯🐯", frame: CGRect(x: 0,y: 0,width: 100,height: 100))
        view.backgroundColor = .yellow
    }

    override func viewDidLoad() {
        print("\n\(name) viewDidLoad")
        super.viewDidLoad()

        let myView = MyView(name: "🐸🐸🐸", frame: CGRect(x: 0,y: 0,width: 20,height: 20))
        myView.backgroundColor = .green
        view.addSubview(myView)

        let redView = MyView(name: "🦊🦊🦊🦊", frame: CGRect(x: 5,y: 5,width: 80,height: 80))
        redView.backgroundColor = .red
        myView.addSubview(redView)

        // view.setNeedsUpdateConstraints()
        redView.setNeedsUpdateConstraints()
    }

    override func viewWillLayoutSubviews() {
        print("\n\(name) viewWillLayoutSubviews")
        super.viewWillLayoutSubviews()
    }

    override func viewDidLayoutSubviews() {
        print("\n\(name) viewDidLayoutSubviews")
        super.viewDidLayoutSubviews()
    }

    override func viewWillAppear(_ animated: Bool) {
        print("\n\(name) viewWillAppear")
        super.viewWillAppear(animated)
        view.frame = CGRect(x: 20, y: 20, width: 300, height: 200)
    }

    override func viewDidAppear(_ animated: Bool) {
        print("\n\(name) viewDidAppear")
        super.viewDidAppear(animated)
    }

    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        print("\(name) didUpdateFocus")
        super.didUpdateFocus(in: context, with: coordinator)
    }

    override func viewLayoutMarginsDidChange() {
        print("\(name) viewLayoutMarginsDidChange")
        super.viewLayoutMarginsDidChange()
    }

    override func viewSafeAreaInsetsDidChange() {
        print("\(name) viewSafeAreaInsetsDidChange")
        super.viewSafeAreaInsetsDidChange()
    }
}
