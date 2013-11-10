class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    initWindow
    true
  end

  def initWindow
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    tapController = TapController.alloc.initWithNibName(nil, bundle: nil)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(tapController)
  end
end
