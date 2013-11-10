class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    initWindow
    true
  end

  def initWindow
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    @window.rootViewController = TapController.alloc.initWithNibName(nil, bundle: nil)
  end
end
