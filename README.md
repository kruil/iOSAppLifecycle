# iOSAppLifecycle
Application lifecycle investigation. The general idea was to log maximum number of events to console to clear understand app lifecycle.
# Actors and Actresses
🤴🏿- ViewController <br>
🐯🐯 - ViewController.view <br>
🐸🐸🐸 - View Controller.view.view <br>
🦊🦊🦊🦊 - View Controller.view.view.view <br>
🌅 - view.layer <br>
# Current output is: 
didFinishLaunchingWithOptions<br>
<br>
🤴🏿 loadView<br>
🐯🐯 - init(frame:)<br>
<br>
🤴🏿 viewDidLoad<br>
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
