class TapController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor
    initNavigation

    @label = UILabel.alloc.initWithFrame(CGRectZero)
    tapText = "Taps #{self.navigationController.viewControllers.count}"
    self.title = tapText
    @label.text = tapText
    @label.sizeToFit
    @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    self.view.addSubview @label
  end

  def initNavigation

    rightButton =  UIBarButtonItem.alloc.initWithTitle "Push", style: UIBarButtonItemStyleBordered, target: self, action: 'push'
    self.navigationItem.rightBarButtonItem = rightButton
  end

  def push
    newController = TapController.alloc.initWithNibName nil, bundle: nil
    self.navigationController.pushViewController newController, animated: true
  end
end
