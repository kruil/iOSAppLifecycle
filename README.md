# iOSAppLifecycle
This is application lifecycle investigation. The general idea is to log max number of events to console to clear understand app launching process. If you know how to log more events please open an issue.
<br><br>
## Actors and Actresses
📱- Device <br>
🤴🏿- ViewController <br>
🐯🐯 - ViewController.view <br>
🐸🐸🐸 - View Controller.view.view <br>
🦊🦊🦊🦊 - View Controller.view.view.view <br>
🌅 - view.layer <br><br>
## Actual log: 
⭐️ - didFinishLaunchingWithOptions<br>

🤴🏿 loadView<br>
🐯🐯 - init(frame:)<br>

🤴🏿 viewDidLoad<br>
🐸🐸🐸 - init(frame:)<br>
🦊🦊🦊🦊 - init(frame:)<br>

🤴🏿 viewWillAppear<br>
🐯🐯 - layoutMarginsDidChange<br>
🤴🏿 viewLayoutMarginsDidChange<br>
🐯🐯 - safeAreaInsetsDidChange<br>
🤴🏿 viewSafeAreaInsetsDidChange<br>
🐯🐯🌅 - layoutSublayers<br>

🤴🏿 viewWillLayoutSubviews<br>
🐯🐯 - layoutSubviews<br>
🐸🐸🐸 - layoutMarginsDidChange<br>
🐸🐸🐸 - safeAreaInsetsDidChange<br>

🤴🏿 viewDidLayoutSubviews<br>
🐸🐸🐸🌅 - layoutSublayers<br>
🐸🐸🐸 - layoutSubviews<br>
🦊🦊🦊🦊 - layoutMarginsDidChange<br>
🦊🦊🦊🦊 - safeAreaInsetsDidChange<br>
🦊🦊🦊🦊🌅 - layoutSublayers<br>
🦊🦊🦊🦊 - layoutSubviews<br>
🐸🐸🐸🌅 - layoutSublayers<br>
🐸🐸🐸 - layoutSubviews<br>
🦊🦊🦊🦊🌅 - layoutSublayers<br>
🦊🦊🦊🦊 - layoutSubviews<br>
🐯🐯🌅 - display<br>
🐸🐸🐸🌅 - display<br>
🦊🦊🦊🦊🌅 - display<br>

🤴🏿 viewDidAppear<br>
⭐️ - applicationDidBecomeActive<br>

📱 Device rotation --------------------

<br>
🐯🐯 - layoutMarginsDidChange<br>
🤴🏿 viewLayoutMarginsDidChange<br>
🐯🐯 - safeAreaInsetsDidChange<br>
🤴🏿 viewSafeAreaInsetsDidChange<br>
🐯🐯 - layoutMarginsDidChange<br>
🤴🏿 viewLayoutMarginsDidChange<br>
🐯🐯 - safeAreaInsetsDidChange<br>
🤴🏿 viewSafeAreaInsetsDidChange<br>
🐯🐯🌅 - layoutSublayers<br>

🤴🏿 viewWillLayoutSubviews<br>
🐯🐯 - layoutSubviews<br>
🐸🐸🐸 - layoutMarginsDidChange<br>
🐸🐸🐸 - safeAreaInsetsDidChange<br>

🤴🏿 viewDidLayoutSubviews<br>
🐸🐸🐸🌅 - layoutSublayers<br>
🐸🐸🐸 - layoutSubviews<br>
🦊🦊🦊🦊 - layoutMarginsDidChange<br>
🦊🦊🦊🦊 - safeAreaInsetsDidChange<br>
🦊🦊🦊🦊🌅 - layoutSublayers<br>
🦊🦊🦊🦊 - layoutSubviews<br>
🐯🐯🌅 - display<br>
