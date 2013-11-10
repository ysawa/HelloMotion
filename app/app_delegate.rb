class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    initWindow
    initSubviews
    true
  end

  def initSubviews
    @blueView = UIView.alloc.initWithFrame(CGRectMake(10, 10, 100, 100))
    @blueView.backgroundColor = UIColor.blueColor
    @window.addSubview(@blueView)

    @greenView = UIView.alloc.initWithFrame(CGRectMake(20, 20, 100, 100))
    @greenView.backgroundColor = UIColor.greenColor
    @window.addSubview(@greenView)

    @redView = UIView.alloc.initWithFrame(CGRectMake(30, 30, 100, 100))
    @redView.backgroundColor = UIColor.redColor
    @window.addSubview(@redView)
  end

  def initWindow
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
  end
end
