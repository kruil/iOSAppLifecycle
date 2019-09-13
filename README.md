# iOSAppLifecycle
This is application lifecycle investigation. The general idea is to log max number of events to console to clear understand app launching process. If you know how to log more events please open an issue.
<br><br>
## Actors and Actresses
🤴🏿- ViewController <br>
🐯🐯 - ViewController.view <br>
🐸🐸🐸 - View Controller.view.view <br>
🦊🦊🦊🦊 - View Controller.view.view.view <br>
🌅 - view.layer <br><br>
## Actual log: 
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
🤴🏿 viewDidAppear<br><br>
applicationDidBecomeActive
