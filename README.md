# iOSAppLifecycle
Application lifecycle investigation. The general idea was to log maximum number of events to console to clear understand app lifecycle. If you now how to get more info please open an issue.
<br>
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
🐸🐸🐸 - init(frame:)<br>
🦊🦊🦊🦊 - init(frame:)<br>
<br>
🤴🏿 viewWillAppear<br>
🐯🐯 - layoutMarginsDidChange<br>
🤴🏿 viewLayoutMarginsDidChange<br>
🐯🐯 - safeAreaInsetsDidChange<br>
🤴🏿 viewSafeAreaInsetsDidChange<br>
🐯🐯 - layoutMarginsDidChange<br>
🤴🏿 viewLayoutMarginsDidChange<br>
🐯🐯 - safeAreaInsetsDidChange<br>
🤴🏿 viewSafeAreaInsetsDidChange<br>
<br>
🤴🏿 viewWillLayoutSubviews<br>
🦊🦊🦊🦊 - updateConstraints<br>
🐸🐸🐸 - updateConstraints<br>
🐯🐯 - updateConstraints<br>
🐸🐸🐸 - layoutMarginsDidChange<br>
🐸🐸🐸 - safeAreaInsetsDidChange<br>
<br>
🤴🏿 viewDidLayoutSubviews<br>
🦊🦊🦊🦊 - layoutMarginsDidChange<br>
🦊🦊🦊🦊 - safeAreaInsetsDidChange<br>
🐯🐯 - layerWillDraw<br>
🐯🐯🌅 - draw<br>
🐸🐸🐸 - layerWillDraw<br>
🐸🐸🐸🌅 - draw<br>
🦊🦊🦊🦊 - layerWillDraw<br>
🦊🦊🦊🦊🌅 - draw<br>
<br>
🤴🏿 viewDidAppear<br>
applicationDidBecomeActive
