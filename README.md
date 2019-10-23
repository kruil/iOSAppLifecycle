# iOSAppLifecycle
This is application lifecycle investigation. The general idea is to log max number of events to console to clear understand app launching process. If you know how to log more events please open an issue.
<br><br>
## Actors and Actresses
📱- Device <br>
🔲- Window <br>
🤴🏿- ViewController <br>
🐯🐯 - ViewController.view <br>
🐸🐸🐸 - View Controller.view.view <br>
🦊🦊🦊🦊 - View Controller.view.view.view <br>
🌅 - view layer <br><br>
## Actual log: 
⭐️ - didFinishLaunchingWithOptions<br>

🤴🏿 loadView<br>
🐯🐯 - init(frame: (0.0, 0.0, 100.0, 100.0)<br>

🤴🏿 viewDidLoad<br>
🐸🐸🐸 - init(frame: (0.0, 0.0, 100.0, 100.0)<br>
🦊🦊🦊🦊 - init(frame: (5.0, 5.0, 50.0, 50.0)<br>
🐯🐯 - frame changed: (0.0, 0.0, 414.0, 896.0)<br>

🤴🏿 viewWillAppear<br>
🐯🐯 - setNeedsLayout<br>
🐯🐯 - layoutMarginsDidChange<br>
🤴🏿 viewLayoutMarginsDidChange<br>
🐯🐯 - safeAreaInsetsDidChange<br>
🤴🏿 viewSafeAreaInsetsDidChange<br>
⭐️ - applicationDidBecomeActive<br>
🔲🌅 - layoutSublayers<br>
🔲 - layoutSubviews<br>
🐯🐯🌅 - layoutSublayers<br>

🤴🏿 viewWillLayoutSubviews<br>
🐯🐯 - layoutSubviews<br>
🐸🐸🐸 - setNeedsLayout<br>
🐸🐸🐸 - layoutMarginsDidChange<br>
🐸🐸🐸 - safeAreaInsetsDidChange<br>

🤴🏿 viewDidLayoutSubviews<br>
🐸🐸🐸🌅 - layoutSublayers<br>
🐸🐸🐸 - layoutSubviews<br>
🦊🦊🦊🦊 - setNeedsLayout<br>
🦊🦊🦊🦊 - layoutMarginsDidChange<br>
🦊🦊🦊🦊 - safeAreaInsetsDidChange<br>
🦊🦊🦊🦊🌅 - layoutSublayers<br>
🦊🦊🦊🦊 - layoutSubviews<br>
🐸🐸🐸🌅 - layoutSublayers<br>
🐸🐸🐸 - layoutSubviews<br>
🦊🦊🦊🦊🌅 - layoutSublayers<br>
🦊🦊🦊🦊 - layoutSubviews<br>
🔲 - display<br>
🐯🐯🌅 - display<br>
🐸🐸🐸🌅 - display<br>
🦊🦊🦊🦊🌅 - display<br>
🔲🌅 - layoutSublayers<br>
🔲 - layoutSubviews<br>
🔲 - updateConstraints<br>
🔲🌅 - layoutSublayers<br>
🔲 - display<br>

🤴🏿 viewDidAppear<br>
<br>
📱 Device rotation --------------------
<br><br>
🐯🐯 - frame changed: (0.0, 0.0, 896.0, 414.0)<br>
🐯🐯 - setNeedsLayout<br>
🔲🌅 - layoutSublayers<br>
🔲 - layoutSubviews<br>
🐯🐯 - setNeedsLayout<br>
🐯🐯 - layoutMarginsDidChange<br>
🤴🏿 viewLayoutMarginsDidChange<br>
🐯🐯 - safeAreaInsetsDidChange<br>
🤴🏿 viewSafeAreaInsetsDidChange<br>
🐯🐯🌅 - layoutSublayers<br>

🤴🏿 viewWillLayoutSubviews<br>
🐯🐯 - layoutSubviews<br>
🐸🐸🐸 - setNeedsLayout<br>
🐸🐸🐸 - layoutMarginsDidChange<br>
🐸🐸🐸 - safeAreaInsetsDidChange<br>

🤴🏿 viewDidLayoutSubviews<br>
🔲🌅 - layoutSublayers<br>
🔲 - layoutSubviews<br>
🐯🐯🌅 - layoutSublayers<br>

🤴🏿 viewWillLayoutSubviews<br>
🐯🐯 - layoutSubviews<br>

🤴🏿 viewDidLayoutSubviews<br>
🐸🐸🐸🌅 - layoutSublayers<br>
🐸🐸🐸 - layoutSubviews<br>
🦊🦊🦊🦊 - setNeedsLayout<br>
🦊🦊🦊🦊 - layoutMarginsDidChange<br>
🦊🦊🦊🦊 - safeAreaInsetsDidChange<br>
🦊🦊🦊🦊🌅 - layoutSublayers<br>
🦊🦊🦊🦊 - layoutSubviews<br>
🔲🌅 - layoutSublayers<br>
🔲 - layoutSubviews<br>
🔲🌅 - layoutSublayers<br>
🔲 - layoutSubviews<br>
🔲🌅 - layoutSublayers<br>
🔲 - layoutSubviews<br>
🔲🌅 - layoutSublayers<br>
🔲 - layoutSubviews<br>
🐯🐯🌅 - display<br>
