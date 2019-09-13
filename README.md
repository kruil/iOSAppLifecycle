# iOSAppLifecycle
Application lifecycle investigation. The general idea was to log maximum number of events to console to clear understand app lifecycle.
# Actors and Actresses
🤴🏿- ViewController <br>
🐯🐯 - ViewController.view 
🐸🐸🐸 - View Controller.view.view 
🦊🦊🦊🦊 - View Controller.view.view.view 
🌅 - view.layer 
# Current output is: 
didFinishLaunchingWithOptions

🤴🏿 loadView
🐯🐯 - init(frame:)

🤴🏿 viewDidLoad
🐸🐸🐸 - init(frame:)
🦊🦊🦊🦊 - init(frame:)

🤴🏿 viewWillAppear
🐯🐯 - layoutMarginsDidChange
🤴🏿 viewLayoutMarginsDidChange
🐯🐯 - safeAreaInsetsDidChange
🤴🏿 viewSafeAreaInsetsDidChange
🐯🐯 - layoutMarginsDidChange
🤴🏿 viewLayoutMarginsDidChange
🐯🐯 - safeAreaInsetsDidChange
🤴🏿 viewSafeAreaInsetsDidChange

🤴🏿 viewWillLayoutSubviews
🦊🦊🦊🦊 - updateConstraints
🐸🐸🐸 - updateConstraints
🐯🐯 - updateConstraints
🐸🐸🐸 - layoutMarginsDidChange
🐸🐸🐸 - safeAreaInsetsDidChange

🤴🏿 viewDidLayoutSubviews
🦊🦊🦊🦊 - layoutMarginsDidChange
🦊🦊🦊🦊 - safeAreaInsetsDidChange
🐯🐯 - layerWillDraw
🐯🐯🌅 - draw
🐸🐸🐸 - layerWillDraw
🐸🐸🐸🌅 - draw
🦊🦊🦊🦊 - layerWillDraw
🦊🦊🦊🦊🌅 - draw

🤴🏿 viewDidAppear
applicationDidBecomeActive
