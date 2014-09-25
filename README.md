Autocorrect
===========

A simple scroll view with some funny images

###Step 1: Add a viewcontroller as the rootViewController of window
- Create new viewController
- Initialize and set as rootViewController

###Step 2: Add a paging scroll view to the ViewController
- Add the following code to the viewDidLoad method:
```
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width * count, self.view.frame.size.height);
    scrollView.pagingEnabled = YES;
```

Add images to the view like this:
```
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake(i * self.view.frame.size.width + 20, 20, self.view.frame.size.width - 40, self.view.frame.size.height - 40);
```
